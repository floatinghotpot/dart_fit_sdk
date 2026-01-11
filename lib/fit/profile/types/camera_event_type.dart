class CameraEventType {
  /// Start of video recording
  static const int videoStart = 0;
  /// Mark of video file split (end of one file, beginning of the other)
  static const int videoSplit = 1;
  /// End of video recording
  static const int videoEnd = 2;
  /// Still photo taken
  static const int photoTaken = 3;
  static const int videoSecondStreamStart = 4;
  static const int videoSecondStreamSplit = 5;
  static const int videoSecondStreamEnd = 6;
  /// Mark of video file split start
  static const int videoSplitStart = 7;
  static const int videoSecondStreamSplitStart = 8;
  /// Mark when a video recording has been paused
  static const int videoPause = 11;
  static const int videoSecondStreamPause = 12;
  /// Mark when a video recording has been resumed
  static const int videoResume = 13;
  static const int videoSecondStreamResume = 14;
}
