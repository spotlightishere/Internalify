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
  HBLogInfo(@"Type is %@", NSStringFromClass([%orig class]))
  HBLogInfo(@"ID: %@", [self applicationBundleID])
  return %orig;
}
%end
