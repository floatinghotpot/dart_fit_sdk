class Event {
  /// Group 0. Start / stop_all
  static const int timer = 0;
  /// start / stop
  static const int workout = 3;
  /// Start at beginning of workout. Stop at end of each step.
  static const int workoutStep = 4;
  /// stop_all group 0
  static const int powerDown = 5;
  /// stop_all group 0
  static const int powerUp = 6;
  /// start / stop group 0
  static const int offCourse = 7;
  /// Stop at end of each session.
  static const int session = 8;
  /// Stop at end of each lap.
  static const int lap = 9;
  /// marker
  static const int coursePoint = 10;
  /// marker
  static const int battery = 11;
  /// Group 1. Start at beginning of activity if VP enabled, when VP pace is changed during activity or VP enabled mid activity. stop_disable when VP disabled.
  static const int virtualPartnerPace = 12;
  /// Group 0. Start / stop when in alert condition.
  static const int hrHighAlert = 13;
  /// Group 0. Start / stop when in alert condition.
  static const int hrLowAlert = 14;
  /// Group 0. Start / stop when in alert condition.
  static const int speedHighAlert = 15;
  /// Group 0. Start / stop when in alert condition.
  static const int speedLowAlert = 16;
  /// Group 0. Start / stop when in alert condition.
  static const int cadHighAlert = 17;
  /// Group 0. Start / stop when in alert condition.
  static const int cadLowAlert = 18;
  /// Group 0. Start / stop when in alert condition.
  static const int powerHighAlert = 19;
  /// Group 0. Start / stop when in alert condition.
  static const int powerLowAlert = 20;
  /// marker
  static const int recoveryHr = 21;
  /// marker
  static const int batteryLow = 22;
  /// Group 1. Start if enabled mid activity (not required at start of activity). Stop when duration is reached. stop_disable if disabled.
  static const int timeDurationAlert = 23;
  /// Group 1. Start if enabled mid activity (not required at start of activity). Stop when duration is reached. stop_disable if disabled.
  static const int distanceDurationAlert = 24;
  /// Group 1. Start if enabled mid activity (not required at start of activity). Stop when duration is reached. stop_disable if disabled.
  static const int calorieDurationAlert = 25;
  /// Group 1.. Stop at end of activity.
  static const int activity = 26;
  /// marker
  static const int fitnessEquipment = 27;
  /// Stop at end of each length.
  static const int length = 28;
  /// marker
  static const int userMarker = 32;
  /// marker
  static const int sportPoint = 33;
  /// start/stop/marker
  static const int calibration = 36;
  /// marker
  static const int frontGearChange = 42;
  /// marker
  static const int rearGearChange = 43;
  /// marker
  static const int riderPositionChange = 44;
  /// Group 0. Start / stop when in alert condition.
  static const int elevHighAlert = 45;
  /// Group 0. Start / stop when in alert condition.
  static const int elevLowAlert = 46;
  /// marker
  static const int commTimeout = 47;
  /// marker
  static const int autoActivityDetect = 54;
  /// marker
  static const int diveAlert = 56;
  /// marker
  static const int diveGasSwitched = 57;
  /// marker
  static const int tankPressureReserve = 71;
  /// marker
  static const int tankPressureCritical = 72;
  /// marker
  static const int tankLost = 73;
  /// start/stop/marker
  static const int radarThreatAlert = 75;
  /// marker
  static const int tankBatteryLow = 76;
  /// marker - tank pod has connected
  static const int tankPodConnected = 81;
  /// marker - tank pod has lost connection
  static const int tankPodDisconnected = 82;
}
