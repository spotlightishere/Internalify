#include <SpringBoard/SBMappedImageCache.h>
%hook SBDockIconListView
+(id)backgroundImageForOrientation:(int*)type {
	%log;
	return [%c(SBMappedImageCache) imageNamed:@"logoFlareAnim_022"];
}
%end
