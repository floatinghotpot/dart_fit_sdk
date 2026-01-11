class AttitudeValidity {
  static const int trackAngleHeadingValid = 1;
  static const int pitchValid = 2;
  static const int rollValid = 4;
  static const int lateralBodyAccelValid = 8;
  static const int normalBodyAccelValid = 16;
  static const int turnRateValid = 32;
  static const int hwFail = 64;
  static const int magInvalid = 128;
  static const int noGps = 256;
  static const int gpsInvalid = 512;
  static const int solutionCoasting = 1024;
  static const int trueTrackAngle = 2048;
  static const int magneticHeading = 4096;
}
