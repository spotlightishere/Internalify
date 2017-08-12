#import "CommonMethods.h"
%hook SBFolderIconView
-(id)_folderBackgroundImage {
  UIImage *originalFolder = %orig;
  CGFloat width = originalFolder.size.width;
  // Fill entire space
  CGFloat height = originalFolder.size.height;
  HBLogDebug(@"Width: %.2f, height: %.2f", width, height);
  
  return [CommonMethods createFauxBlurWithImage: originalFolder];
}
-(void)showDropGlow:(char)arg1 {
  return;
}
%end
%hook SBLinenView
-(UIImage*)squareImageForBounds:(CGRect)dimensions {
	return [CommonMethods createFauxBlurWithDimensions: dimensions];
}
%end
%hook SBIconModel
-(void)addNewsstandIcon {
	// Goodbye, Newsstand.
	return;
}
%end