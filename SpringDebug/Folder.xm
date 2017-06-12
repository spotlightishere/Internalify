%hook SBFolderIconView
-(id)_folderBackgroundImage {
  UIImage *test = %orig;
  CGFloat width = test.size.width;
  // Fill entire space
  CGFloat height = test.size.height;
  HBLogDebug(@"Width: %.2f, height: %.2f, address: %p", width, height, &self);
  CGRect rect = CGRectMake(0.0f, 0.0f, width, height - 3.0f);
  // Round corners
  // https://stackoverflow.com/a/44489979/3874884
  UIGraphicsBeginImageContextWithOptions(rect.size, false, 0);
  // The color below was extracted from iOS 11. #929292
  [[UIColor colorWithRed:0.57 green:0.57 blue:0.57 alpha:0.9] setFill];
  [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:15.0] fill];
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();


  // This looks super hacky. Honestly, it is.
  // Yes, it's a _UIMappedBitmapImage that's expected.
  // We're basically casting it here.
  return image;
}

-(void)showDropGlow:(char)arg1 {
  %log;
  return;
}
%end
