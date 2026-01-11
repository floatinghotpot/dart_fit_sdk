class TimeMode {
  static const int hour12 = 0;
  /// Does not use a leading zero and has a colon
  static const int hour24 = 1;
  /// Uses a leading zero and does not have a colon
  static const int military = 2;
  static const int hour12WithSeconds = 3;
  static const int hour24WithSeconds = 4;
  static const int utc = 5;
}
