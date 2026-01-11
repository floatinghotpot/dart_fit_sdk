class WorkoutCapabilities {
  static const int interval = 1;
  static const int custom = 2;
  static const int fitnessEquipment = 4;
  static const int firstbeat = 8;
  static const int newLeaf = 16;
  /// For backwards compatibility. Watch should add missing id fields then clear flag.
  static const int tcx = 32;
  /// Speed source required for workout step.
  static const int speed = 128;
  /// Heart rate source required for workout step.
  static const int heartRate = 256;
  /// Distance source required for workout step.
  static const int distance = 512;
  /// Cadence source required for workout step.
  static const int cadence = 1024;
  /// Power source required for workout step.
  static const int power = 2048;
  /// Grade source required for workout step.
  static const int grade = 4096;
  /// Resistance source required for workout step.
  static const int resistance = 8192;
  static const int protected = 16384;
}
