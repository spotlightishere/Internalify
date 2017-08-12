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
	// Yes, we're totally 100% a carrier install as well.
	return true;
}

-(bool)isCarrierInstall:(bool)arg1 hasInternalBundle:(bool)arg2 {
	// Who cares about the original answer? It'd be no fun anyway.
	return true;
}

-(bool)hasCapability:(NSString*)capabilityName {
	bool capabilityStatus = %orig;
	if ([capabilityName isEqual:@"SBCanForceDebuggingInfo"]) {
		capabilityStatus = true;
	} else if ([capabilityName isEqual:@"gas-gauge-battery"]) {
		capabilityStatus = true;
	} else if ([capabilityName isEqual:@"opengles-2"]) {
		// Prevent logging spam
		return %orig;
	}
	HBLogDebug(@"Returned %@ for the capability \"%@\".", 
		capabilityStatus ? @"true " : @"false", capabilityName);
	return capabilityStatus;
}

%end
%hook SBAlertItemsController
-(bool)hasAlertOfClass:(Class)classThing {
	if ([NSStringFromClass(classThing) isEqual:@"SBCarrierDebuggingAlert"]) {
		HBLogInfo(@"%@", [[NSBundle mainBundle] localizedStringForKey:@"CARRIER_DEBUGGING_TITLE" value:@"" table:@"SpringBoard"]);
		HBLogInfo(@"%@", [[NSBundle mainBundle] localizedStringForKey:@"CARRIER_DEBUGGING_BODY" value:@"" table:@"SpringBoard"]);
		return true;
	} else {
		return %orig;
	}
}
%end
%hook SBCarrierDebuggingAlert

+(bool)haveShownAlert {
	return false;
}

%end
