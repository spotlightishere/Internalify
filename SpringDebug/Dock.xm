#include <SpringBoard/SBMappedImageCache.h>
#include <UIKit/UIKit.h>
#include <UIKit/_UIMappedBitmapImage.h>
%hook SBDockIconListView
+(id)backgroundImageForOrientation: (int*)type {
	// Get current image for dynamic resizing
	UIImage *test = %orig;
	CGFloat width = test.size.width;
	CGFloat height = test.size.height;
	CGRect rect = CGRectMake(0.0f, 0.0f, width, height);
  UIGraphicsBeginImageContext(rect.size);
  CGContextRef context = UIGraphicsGetCurrentContext();

  CGContextSetFillColorWithColor(context, [[UIColor redColor] CGColor]);
  CGContextFillRect(context, rect);

  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();


  // This looks super hacky. Honestly, it is.
	// Yes, it's a _UIMappedBitmapImage that's expected.
	// We're basically casting it here.
  return image;
}
%end
