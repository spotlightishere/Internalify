%hook SBPlatformController

// Normal format: @"%@ (1), %@ (2) %@ (3)"
// 1: INTERNAL_INSTALL_LEGAL_DECLARATION
// 2: INTERNAL_INSTALL_LEGAL_INSTRUCTIONS
// 3: INTERNAL_INSTALL_LEGAL_CONTACT

-(bool)isInternalInstall {
	// Yes, we're totally 100% an internal install.
	return true;
}

-(bool)isCarrierInstall {
	// Yes, we're totally 100% an carrier install as well.
	return true;
}

-(BOOL)hasCapability:(NSString*)capabilityName {
	%log;
	if ([capabilityName isEqual:@"SBCanForceDebuggingInfo"]) {
		return true;
	}
	return %orig;
}

%end
%hook SBCarrierDebuggingAlert

+(bool)haveShownAlert {
	return false;
}

%end
