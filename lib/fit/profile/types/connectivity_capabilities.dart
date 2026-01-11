class ConnectivityCapabilities {
  static const int bluetooth = 1;
  static const int bluetoothLe = 2;
  static const int ant = 4;
  static const int activityUpload = 8;
  static const int courseDownload = 16;
  static const int workoutDownload = 32;
  static const int liveTrack = 64;
  static const int weatherConditions = 128;
  static const int weatherAlerts = 256;
  static const int gpsEphemerisDownload = 512;
  static const int explicitArchive = 1024;
  static const int setupIncomplete = 2048;
  static const int continueSyncAfterSoftwareUpdate = 4096;
  static const int connectIqAppDownload = 8192;
  static const int golfCourseDownload = 16384;
  /// Indicates device is in control of initiating all syncs
  static const int deviceInitiatesSync = 32768;
  static const int connectIqWatchAppDownload = 65536;
  static const int connectIqWidgetDownload = 131072;
  static const int connectIqWatchFaceDownload = 262144;
  static const int connectIqDataFieldDownload = 524288;
  /// Device supports delete and reorder of apps via GCM
  static const int connectIqAppManagment = 1048576;
  static const int swingSensor = 2097152;
  static const int swingSensorRemote = 4194304;
  /// Device supports incident detection
  static const int incidentDetection = 8388608;
  static const int audioPrompts = 16777216;
  /// Device supports reporting wifi verification via GCM
  static const int wifiVerification = 33554432;
  /// Device supports True Up
  static const int trueUp = 67108864;
  /// Device supports Find My Watch
  static const int findMyWatch = 134217728;
  static const int remoteManualSync = 268435456;
  /// Device supports LiveTrack auto start
  static const int liveTrackAutoStart = 536870912;
  /// Device supports LiveTrack Messaging
  static const int liveTrackMessaging = 1073741824;
  /// Device supports instant input feature
  static const int instantInput = 2147483648;
}
