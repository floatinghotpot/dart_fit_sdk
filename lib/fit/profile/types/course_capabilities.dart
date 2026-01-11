class CourseCapabilities {
  static const int processed = 1;
  static const int valid = 2;
  static const int time = 4;
  static const int distance = 8;
  static const int position = 16;
  static const int heartRate = 32;
  static const int power = 64;
  static const int cadence = 128;
  static const int training = 256;
  static const int navigation = 512;
  static const int bikeway = 1024;
  /// Denote course files to be used as flight plans
  static const int aviation = 4096;
}
