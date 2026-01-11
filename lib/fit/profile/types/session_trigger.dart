class SessionTrigger {
  static const int activityEnd = 0;
  /// User changed sport.
  static const int manual = 1;
  /// Auto multi-sport feature is enabled and user pressed lap button to advance session.
  static const int autoMultiSport = 2;
  /// Auto sport change caused by user linking to fitness equipment.
  static const int fitnessEquipment = 3;
}
