// Override theos's copy
#include "../Headers/SpringBoard/SBIcon.h"
// Remove shadows
%hook SBIconView
-(id)_shadowImage {
  return nil;
}
%end
%hook SBIcon
-(id)getIconImage:(int)arg1 {
  %log;
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
  // Use original icon for future reference
  UIImage* origImage = %orig;
  appIcon = [UIImage imageWithCGImage:[appIcon CGImage]
                              scale:[origImage scale]
                                 orientation:[origImage imageOrientation]];
  // Get rect
  CGRect rect = CGRectMake(0.0f, 0.0f, origImage.size.width, origImage.size.height);
  UIGraphicsBeginImageContextWithOptions(rect.size, false, 0);

  // Path
  UIBezierPath* path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:15.0];
  [path addClip];
  [path fill];
  // Draw actual icon
  [[UIColor clearColor] set];
  [appIcon drawInRect:rect];
  UIImage* finalIcon = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();

  return finalIcon;
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


%hook SBApplicationIcon
-(id)__loadIconImage:(id)arg1 format:(int)arg2 scale:(float)arg3 {
  %log;
  return %orig;
}
%end
