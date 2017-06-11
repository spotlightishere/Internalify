#include <SpringBoard/SBMappedImageCache.h>
#include <UIKit/UIKit.h>
#include <UIKit/_UIMappedBitmapImage.h>
%hook SBDockIconListView
+(id)backgroundImageForOrientation: (int*)type {
	// Get current image for dynamic resizing
	UIImage *test = %orig;
	CGFloat width = test.size.width;
	CGFloat height = test.size.height;
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
-(void)_updateForOrientation:(int)arg1 duration:(double)arg2 {
	%log;
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
