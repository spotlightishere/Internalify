#include "CommonMethods.h"
@implementation CommonMethods : NSObject
+(UIImage*)createFauxBlurWithImage:(UIImage*)originalImage {
  UIGraphicsBeginImageContextWithOptions(originalImage.size, NO, originalImage.scale);
  CGRect imageRect = CGRectMake(0.0f, 0.0f, originalImage.size.width,
  	originalImage.size.height);

  CGContextRef ctx = UIGraphicsGetCurrentContext();

  // Draw a white background (for white mask)
  CGContextSetRGBFillColor(ctx, 0.57f, 0.57f, 0.57f, 0.9f);
  CGContextFillRect(ctx, imageRect);

  // Overlay original icon 
  [originalImage drawInRect:imageRect blendMode:kCGBlendModeDestinationIn alpha:1.0f];
  UIImage* outImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return outImage;
}

+(UIImage*)createFauxBlurWithDimensions:(CGRect)dimensions {
  UIGraphicsBeginImageContextWithOptions(dimensions.size, NO, 0);

  CGContextRef ctx = UIGraphicsGetCurrentContext();

  // Draw a white background (for white mask)
  CGContextSetRGBFillColor(ctx, 0.57f, 0.57f, 0.57f, 0.9f);
  CGContextFillRect(ctx, dimensions);
  
  UIImage* outImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return outImage;
}
@end