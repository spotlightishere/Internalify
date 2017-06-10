
// Dumping class 94 (MapsAppDelegate)
@interface MapsAppDelegate : UIKit::_OBJC_METACLASS_$_UIResponder
// No properties..
// 29 instance variables
 /* 0 */  char _suppressLoadingIndicator; // c
 /* 1 */  int _loadingCount; // i
 /* 2 */  int _loadingCounters; // ^i
 /* 3 */  int _idleTimerDisabledCount; // i
 /* 4 */  int _idleTimerDisabledIfChargedCount; // i
 /* 5 */  Unknown type: [ - [2i] - Let J know about this - it's a quick fix
 _idleTimerDisabledReasonCounter; // [2i]
 /* 6 */  int _batteryMonitorCount; // i
 /* 7 */  Unknown type: [ - [2i] - Let J know about this - it's a quick fix
 _batteryMonitorReasonCounter; // [2i]
 /* 8 */  char _registeredForAddressBookChanges; // c
 /* 9 */  UIWindow _window; // @"UIWindow"
 /* 10 */  MapNavigationController _navControllerPhone; // @"MapNavigationController"
 /* 11 */  MapViewController _mapController; // @"MapViewController"
 /* 12 */  UINavigationController _debugNavigationController; // @"UINavigationController"
 /* 13 */  MapsDebugController _mapsDebugController; // @"MapsDebugController"
 /* 14 */  NSDate _lastSeenWifiAlertDate; // @"NSDate"
 /* 15 */  UIAlertView _wifiDisabledAlert; // @"UIAlertView"
 /* 16 */  char _disableWiFiAlert; // c
 /* 17 */  MapsChromeViewController _chromeViewController; // @"MapsChromeViewController"
 /* 18 */  int _navNotifyToken; // i
 /* 19 */  char _hasNavNotifyToken; // c
 /* 20 */  char _isNavigating; // c
 /* 21 */  char _isTrackingLocation; // c
 /* 22 */  struct SBSThermalWarningAssertion _thermalWarningSuppressionAssertion; // ^{SBSThermalWarningAssertion=}
 /* 23 */  char _running; // c
 /* 24 */  int _postedOverrides; // i
 /* 25 */  NSTimer _navigationTimestampTimer; // @"NSTimer"
 /* 26 */  NSMutableSet _navigatorsSuspendingIdleTimer; // @"NSMutableSet"
 /* 27 */  BKSProcessAssertion _priorityAssertion; // @"BKSProcessAssertion"
 /* 28 */  NSDate _enteredForegroundDate; // @"NSDate"
// 94 instance methods
 /* 0 */ 0xe459 - setupFullyDrawnNotification:;  // Protocol v12@0:4:8
 /* 1 */ 0xe35d - doPostLaunchTestSetup;  // Protocol v8@0:4
 /* 2 */ 0x49a39 - application:runTest:options:;  // Protocol c20@0:4@8@12@16
 /* 3 */ 0x1191d - didFinishDrawingTiles:;  // Protocol v12@0:4@8
 /* 4 */ 0x49b25 - didFinishJumping:;  // Protocol v12@0:4@8
 /* 5 */ 0x49c41 - animateCircle:completion:;  // Protocol v16@0:4i8@?12
 /* 6 */ 0x49e55 - circlePanLoadFinished;  // Protocol v8@0:4
 /* 7 */ 0x4a0c9 - runCirclePanTest:options:;  // Protocol c16@0:4@8@12
 /* 8 */ 0x4a609 - runMapsTest:options:;  // Protocol c16@0:4@8@12
 /* 9 */ 0x4a6f1 - finishedTest:extraResults:;  // Protocol v16@0:4@8@12
 /* 10 */ 0x4a791 - failedTest:;  // Protocol v12@0:4@8
 /* 11 */ 0x4a7e5 - _keyboardDidShow:;  // Protocol v12@0:4@8
 /* 12 */ 0x4a871 - startKeyboardBringupTest:;  // Protocol v12@0:4@8
 /* 13 */ 0x4a8e9 - checkFullyDrawn;  // Protocol v8@0:4
 /* 14 */ 0x4a949 - finishedFps:;  // Protocol v12@0:4@8
 /* 15 */ 0x4a9e9 - startTimingFps:;  // Protocol v12@0:4@8
 /* 16 */ 0x4aad9 - setupForVKTest:options:;  // Protocol v16@0:4@8@12
 /* 17 */ 0x4ada9 - runVKTest:options:;  // Protocol c16@0:4@8@12
 /* 18 */ 0x4b0e5 - panLoadFinished;  // Protocol v8@0:4
 /* 19 */ 0x4b459 - runPanZoomTest:options:;  // Protocol c16@0:4@8@12
 /* 20 */ 0x4b739 - jumpToBayArea;  // Protocol v8@0:4
 /* 21 */ 0x4b819 - jumpToCoords:pitch:yaw:;  // Protocol v48@0:4{?=ddd}8d32d40
 /* 22 */ 0xe5d9 - jumpToCupertino;  // Protocol v8@0:4
 /* 23 */ 0x38d9 - applicationDidFinishLaunching:;  // Protocol v12@0:4@8
 /* 24 */ 0x3939 - _loadMapsForApplication:;  // Protocol v12@0:4@8
 /* 25 */ 0xe7c9 - _relaunchIntoNavigationIfNecessary;  // Protocol v8@0:4
 /* 26 */ 0x10109 - _updateLoadingIndicator;  // Protocol v8@0:4
 /* 27 */ 0x11a39 - _suspendIfNeeded;  // Protocol v8@0:4
 /* 28 */ 0xee21 - _resumeIfNeeded;  // Protocol v8@0:4
 /* 29 */ 0xa1041 - applicationDidReceiveMemoryWarning:;  // Protocol v12@0:4@8
 /* 30 */ 0x119bd - applicationWillResignActive:;  // Protocol v12@0:4@8
 /* 31 */ 0xe991 - applicationDidBecomeActive:;  // Protocol v12@0:4@8
 /* 32 */ 0xa1049 - sendDidEnterBackgroundNotification;  // Protocol v8@0:4
 /* 33 */ 0x11b2d - applicationDidEnterBackground:;  // Protocol v12@0:4@8
 /* 34 */ 0xa1095 - _moveBackToNavigationIfNeeded;  // Protocol v8@0:4
 /* 35 */ 0xa112d - applicationWillEnterForeground:;  // Protocol v12@0:4@8
 /* 36 */ 0x12d51 - applicationWillTerminate:;  // Protocol v12@0:4@8
 /* 37 */ 0xa1205 - dealloc;  // Protocol v8@0:4
 /* 38 */ 0xa134d - statusBarTapped;  // Protocol v8@0:4
 /* 39 */ 0xa13a9 - presentMapsDebugController;  // Protocol v8@0:4
 /* 40 */ 0xe5a1 - mainMapView;  // Protocol @8@0:4
 /* 41 */ 0xa14b9 - nameOfDefaultImageToUpdateAtSuspension;  // Protocol @8@0:4
 /* 42 */ 0xa14c5 - prepareForDefaultImageSnapshot;  // Protocol v8@0:4
 /* 43 */ 0xa14e5 - application:openURL:sourceApplication:annotation:;  // Protocol c24@0:4@8@12@16@20
 /* 44 */ 0x100f1 - isLoading;  // Protocol c8@0:4
 /* 45 */ 0x10059 - _updateLoadingCounterForType:counterDelta:;  // Protocol v16@0:4i8i12
 /* 46 */ 0xbc31 - setLoading:forType:;  // Protocol v16@0:4c8i12
 /* 47 */ 0x11c15 - setSuppressNetworkActivity:;  // Protocol v12@0:4c8
 /* 48 */ 0xa1575 - idleTimerStateDescription;  // Protocol @8@0:4
 /* 49 */ 0x109d1 - _setIdleTimerState:;  // Protocol v12@0:4i8
 /* 50 */ 0xa16b1 - _idleTimerStateEnableBatteryMonitoring:;  // Protocol v12@0:4c8
 /* 51 */ 0x10995 - _idleTimerStateForBattery;  // Protocol i8@0:4
 /* 52 */ 0xa16c9 - _idleTimerStateBatteryStatusDidChange:;  // Protocol v12@0:4@8
 /* 53 */ 0x1071d - _setDesiredIdleTimerState:reason:monitorBatteryState:;  // Protocol v20@0:4i8i12c16
 /* 54 */ 0x24191 - sharedAddressBook;  // Protocol ^v8@0:4
 /* 55 */ 0x37c6d - applicationCanPromptToCalibrateHeading:;  // Protocol c12@0:4@8
 /* 56 */ 0xa1711 - canPlayTrace;  // Protocol c8@0:4
 /* 57 */ 0xa1735 - _removeExistingWifiAlert;  // Protocol v8@0:4
 /* 58 */ 0xa17ad - wiFiStatusDidChange:;  // Protocol v12@0:4@8
 /* 59 */ 0x3571 - _showWifiAlertIfNecessary;  // Protocol v8@0:4
 /* 60 */ 0xa186d - alertView:clickedButtonAtIndex:;  // Protocol v16@0:4@8i12
 /* 61 */ 0x355d - locationManagerUpdatedLocation:;  // Protocol v12@0:4@8
 /* 62 */ 0xa1925 - locationManagerFailedToUpdateLocation:withError:;  // Protocol v16@0:4@8@12
 /* 63 */ 0xa1935 - locationManagerDidReset:;  // Protocol v12@0:4@8
 /* 64 */ 0xa1939 - locationManagerShouldPauseLocationUpdates:;  // Protocol c12@0:4@8
 /* 65 */ 0xa193d - locationManagerDidPauseLocationUpdates:;  // Protocol v12@0:4@8
 /* 66 */ 0xa1941 - locationManagerDidResumeLocationUpdates:;  // Protocol v12@0:4@8
 /* 67 */ 0xa1945 - directionsProviderID;  // Protocol S8@0:4
 /* 68 */ 0x2c839 - geocodeProvider;  // Protocol S8@0:4
 /* 69 */ 0xa1ad1 - application:didFinishLaunchingSuspendedWithOptions:;  // Protocol v16@0:4@8@12
 /* 70 */ 0xa1af9 - _application:statusBarTouchesEnded:;  // Protocol v16@0:4@8@12
 /* 71 */ 0xa1b09 - _updatePersistedNavigationTimestamp;  // Protocol v8@0:4
 /* 72 */ 0xa1b69 - _setLaunchIntoNavigationOnRelaunch:destination:;  // Protocol v16@0:4c8@12
 /* 73 */ 0xa1cb9 - navigatorWillStart:;  // Protocol v12@0:4@8
 /* 74 */ 0xa1f0d - navigatorWillPause:;  // Protocol v12@0:4@8
 /* 75 */ 0xa1f21 - navigatorWillResumeFromPause:;  // Protocol v12@0:4@8
 /* 76 */ 0xa1f35 - navigatorHasArrived:;  // Protocol v12@0:4@8
 /* 77 */ 0xa1fd5 - navigatorWillEnd:;  // Protocol v12@0:4@8
 /* 78 */ 0xa2135 - clearDoubleHeightStatusBar;  // Protocol v8@0:4
 /* 79 */ 0xa2171 - monitorBatteryStateDescription;  // Protocol @8@0:4
 /* 80 */ 0x10861 - setMonitorBattery:forReason:;  // Protocol v16@0:4c8i12
 /* 81 */ 0x106d5 - setTrackingMode:monitorBatteryState:;  // Protocol v16@0:4i8c12
 /* 82 */ 0xa2249 - setPriorityAssertion:;  // Protocol v12@0:4@8
 /* 83 */ 0xa229d - setMapsIsNavigating:;  // Protocol v12@0:4c8
 /* 84 */ 0xe9f9 - _updateDistanceUnits;  // Protocol v8@0:4
 /* 85 */ 0xa2539 - prepareBackgroundNavigationWithItems:;  // Protocol v12@0:4@8
 /* 86 */ 0xa25c9 - startPreparedBackgroundNavigation;  // Protocol v8@0:4
 /* 87 */ 0xa2605 - shieldImageForType:text:mode:;  // Protocol @20@0:4i8@12i16
 /* 88 */ 0x3825 - lastSeenWifiAlertDate;  // Protocol @8@0:4
 /* 89 */ 0x3835 - setLastSeenWifiAlertDate:;  // Protocol v12@0:4@8
 /* 90 */ 0xa26e5 - chromeViewController;  // Protocol @8@0:4
 /* 91 */ 0xa26f5 - priorityAssertion;  // Protocol @8@0:4
 /* 92 */ 0xa2705 - enteredForegroundDate;  // Protocol @8@0:4
 /* 93 */ 0xa2715 - setEnteredForegroundDate:;  // Protocol v12@0:4@8
@end
