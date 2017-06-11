#include <SpringBoard/SBMappedImageCache.h>
#include <UIKit/UIKit.h>
#include <UIKit/_UIMappedBitmapImage.h>

float totalMultiplier = 2.0f;

// Actual dock tweaks
%hook SBDockIconListView
+(id)backgroundImageForOrientation: (int*)type {
	// Get current image for dynamic resizing
	UIImage *test = %orig;
	CGFloat width = test.size.width;
	// Fill entire space
	CGFloat height = test.size.height * totalMultiplier;
	HBLogDebug(@"Width: %.2f, height: %.2f, address: %p", width, height, &self);
	CGRect rect = CGRectMake(0.0f, 0.0f, width, height);
  UIGraphicsBeginImageContext(rect.size);
  CGContextRef context = UIGraphicsGetCurrentContext();

	// The color below was extracted from iOS 11. #929292
  CGContextSetFillColorWithColor(context, [[UIColor colorWithRed:0.57 green:0.57 blue:0.57 alpha:1.0] CGColor]);
  CGContextFillRect(context, rect);

  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();


  // This looks super hacky. Honestly, it is.
	// Yes, it's a _UIMappedBitmapImage that's expected.
	// We're basically casting it here.
  return image;
}
-(float)topIconInset {
	// We're increasing the original height by 2 anyway,
	// so gotta act accordingly
	// Then because of the label, we can go .20 instead of .25
	// (or you know, relatively speaking)
	return %orig / (totalMultiplier * 0.1);
}
%end
// Move search dots up
%hook SBIconListPageControl
-(void)setFrame:(CGRect)frame {
	%log;
	CGRect oldFrame = frame;
	frame.size.height = oldFrame.size.height * totalMultiplier;
	%orig;
}
%end

// Disable app label reflections
%hook SBDockIconLabelImageParameters
-(id)shadowColor {
	return nil;
}
%end
// Disable app icon reflections
%hook SBIconView
-(char)showsReflection {
	return false;
}
%end
