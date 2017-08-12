// Override theos's copy
#include "../Headers/SpringBoard/SBIcon.h"
// Remove shadows
%hook SBIconView
-(id)_shadowImage {
  return nil;
}
%end
%hook SBIcon
-(id)getIconImage:(int)size {
  NSString* bundleID = [self applicationBundleID];
  if (bundleID == nil) {
    HBLogInfo(@"Found app that is most likely Newsstand/another app without an actual icon. Skipping generation.");
    return %orig;
  }
  HBLogDebug(@"Generating for ID: %@", bundleID);
  NSString* iconLocation = [NSString stringWithFormat:@"/var/mobile/Library/iOSIcons/%@.png", bundleID];
  UIImage* appIcon = %orig;
  if ([[NSFileManager defaultManager] fileExistsAtPath:iconLocation]) {
    appIcon = [UIImage imageWithContentsOfFile:iconLocation];
  } else {
    appIcon = %orig;
  }
  // Use original ic// on for future reference
  UIImage* origImage = %orig;
   appIcon = [UIImage imageWithCGImage:[appIcon CGImage]
                               scale:[origImage scale]
                                  orientation:[origImage imageOrientation]];
	UIGraphicsBeginImageContextWithOptions(origImage.size, NO, origImage.scale);
    CGRect imageRect = CGRectMake(0.0f, 0.0f, origImage.size.width, origImage.size.height);

	// Fill replaced app icon in, and then overlay orig to set border.
	[appIcon drawInRect:imageRect blendMode:kCGBlendModeNormal alpha:1.0f];
	[origImage drawInRect:imageRect blendMode:kCGBlendModeDestinationIn alpha:1.0f];

    UIImage* outImage = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
	return outImage;
}
%end

// Remove label shadow
%hook SBIconLabelImageParameters
- (struct CGSize)shadowOffset {
  return CGSizeMake(0, 0);
}
- (float)shadowBlur {
  return 0;
}
- (id)shadowColor {
  return 0;
}
%end
