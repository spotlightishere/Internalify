#import "test.h"
%hook MapsAppDelegate

-(void)statusBarTapped {
	// Make it seem as if this is an internal install
	// only for this instance.
	%log;
	[self presentMapsDebugController];
}

%end
