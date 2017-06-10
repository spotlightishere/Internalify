%hook SBPlatformController

// Normal format: @"%@ (1), %@ (2) %@ (3)"
// 1: INTERNAL_INSTALL_LEGAL_DECLARATION
// 2: INTERNAL_INSTALL_LEGAL_INSTRUCTIONS
// 3: INTERNAL_INSTALL_LEGAL_CONTACT

-(void)isInternalInstall {
	// Make it seem as if this is an internal install
	return true;
}

%end
