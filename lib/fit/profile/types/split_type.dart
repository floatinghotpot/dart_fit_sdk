class SplitType {
  static const int ascentSplit = 1;
  static const int descentSplit = 2;
  static const int intervalActive = 3;
  static const int intervalRest = 4;
  static const int intervalWarmup = 5;
  static const int intervalCooldown = 6;
  static const int intervalRecovery = 7;
  static const int intervalOther = 8;
  static const int climbActive = 9;
  static const int climbRest = 10;
  static const int surfActive = 11;
  static const int runActive = 12;
  static const int runRest = 13;
  static const int workoutRound = 14;
  /// run/walk detection running
  static const int rwdRun = 17;
  /// run/walk detection walking
  static const int rwdWalk = 18;
  static const int windsurfActive = 21;
  /// run/walk detection standing
  static const int rwdStand = 22;
  /// Marks the time going from ascent_split to descent_split/used in backcountry ski
  static const int transition = 23;
  static const int skiLiftSplit = 28;
  static const int skiRunSplit = 29;
}
