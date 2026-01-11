class DiveAlert {
  static const int ndlReached = 0;
  static const int gasSwitchPrompted = 1;
  static const int nearSurface = 2;
  static const int approachingNdl = 3;
  static const int po2Warn = 4;
  static const int po2CritHigh = 5;
  static const int po2CritLow = 6;
  static const int timeAlert = 7;
  static const int depthAlert = 8;
  static const int decoCeilingBroken = 9;
  static const int decoComplete = 10;
  static const int safetyStopBroken = 11;
  static const int safetyStopComplete = 12;
  static const int cnsWarning = 13;
  static const int cnsCritical = 14;
  static const int otuWarning = 15;
  static const int otuCritical = 16;
  static const int ascentCritical = 17;
  static const int alertDismissedByKey = 18;
  static const int alertDismissedByTimeout = 19;
  static const int batteryLow = 20;
  static const int batteryCritical = 21;
  static const int safetyStopStarted = 22;
  static const int approachingFirstDecoStop = 23;
  static const int setpointSwitchAutoLow = 24;
  static const int setpointSwitchAutoHigh = 25;
  static const int setpointSwitchManualLow = 26;
  static const int setpointSwitchManualHigh = 27;
  static const int autoSetpointSwitchIgnored = 28;
  static const int switchedToOpenCircuit = 29;
  static const int switchedToClosedCircuit = 30;
  static const int tankBatteryLow = 32;
  /// ccr diluent has low po2
  static const int po2CcrDilLow = 33;
  /// a deco stop has been cleared
  static const int decoStopCleared = 34;
  /// Target Depth Apnea Alarm triggered
  static const int apneaNeutralBuoyancy = 35;
  /// Neutral Buoyance Apnea Alarm triggered
  static const int apneaTargetDepth = 36;
  /// Surface Apnea Alarm triggered
  static const int apneaSurface = 37;
  /// High Speed Apnea Alarm triggered
  static const int apneaHighSpeed = 38;
  /// Low Speed Apnea Alarm triggered
  static const int apneaLowSpeed = 39;
}
