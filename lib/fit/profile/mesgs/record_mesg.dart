import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class RecordMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldPositionLat = 0;
  static const int fieldPositionLong = 1;
  static const int fieldAltitude = 2;
  static const int fieldHeartRate = 3;
  static const int fieldCadence = 4;
  static const int fieldDistance = 5;
  static const int fieldSpeed = 6;
  static const int fieldPower = 7;
  static const int fieldCompressedSpeedDistance = 8;
  static const int fieldGrade = 9;
  static const int fieldResistance = 10;
  static const int fieldTimeFromCourse = 11;
  static const int fieldCycleLength = 12;
  static const int fieldTemperature = 13;
  static const int fieldSpeed1s = 17;
  static const int fieldCycles = 18;
  static const int fieldTotalCycles = 19;
  static const int fieldCompressedAccumulatedPower = 28;
  static const int fieldAccumulatedPower = 29;
  static const int fieldLeftRightBalance = 30;
  static const int fieldGpsAccuracy = 31;
  static const int fieldVerticalSpeed = 32;
  static const int fieldCalories = 33;
  static const int fieldVerticalOscillation = 39;
  static const int fieldStanceTimePercent = 40;
  static const int fieldStanceTime = 41;
  static const int fieldActivityType = 42;
  static const int fieldLeftTorqueEffectiveness = 43;
  static const int fieldRightTorqueEffectiveness = 44;
  static const int fieldLeftPedalSmoothness = 45;
  static const int fieldRightPedalSmoothness = 46;
  static const int fieldCombinedPedalSmoothness = 47;
  static const int fieldTime128 = 48;
  static const int fieldStrokeType = 49;
  static const int fieldZone = 50;
  static const int fieldBallSpeed = 51;
  static const int fieldCadence256 = 52;
  static const int fieldFractionalCadence = 53;
  static const int fieldTotalHemoglobinConc = 54;
  static const int fieldTotalHemoglobinConcMin = 55;
  static const int fieldTotalHemoglobinConcMax = 56;
  static const int fieldSaturatedHemoglobinPercent = 57;
  static const int fieldSaturatedHemoglobinPercentMin = 58;
  static const int fieldSaturatedHemoglobinPercentMax = 59;
  static const int fieldDeviceIndex = 62;
  static const int fieldLeftPco = 67;
  static const int fieldRightPco = 68;
  static const int fieldLeftPowerPhase = 69;
  static const int fieldLeftPowerPhasePeak = 70;
  static const int fieldRightPowerPhase = 71;
  static const int fieldRightPowerPhasePeak = 72;
  static const int fieldEnhancedSpeed = 73;
  static const int fieldEnhancedAltitude = 78;
  static const int fieldBatterySoc = 81;
  static const int fieldMotorPower = 82;
  static const int fieldVerticalRatio = 83;
  static const int fieldStanceTimeBalance = 84;
  static const int fieldStepLength = 85;
  static const int fieldCycleLength16 = 87;
  static const int fieldAbsolutePressure = 91;
  static const int fieldDepth = 92;
  static const int fieldNextStopDepth = 93;
  static const int fieldNextStopTime = 94;
  static const int fieldTimeToSurface = 95;
  static const int fieldNdlTime = 96;
  static const int fieldCnsLoad = 97;
  static const int fieldN2Load = 98;
  static const int fieldRespirationRate = 99;
  static const int fieldEnhancedRespirationRate = 108;
  static const int fieldGrit = 114;
  static const int fieldFlow = 115;
  static const int fieldCurrentStress = 116;
  static const int fieldEbikeTravelRange = 117;
  static const int fieldEbikeBatteryLevel = 118;
  static const int fieldEbikeAssistMode = 119;
  static const int fieldEbikeAssistLevelPercent = 120;
  static const int fieldAirTimeRemaining = 123;
  static const int fieldPressureSac = 124;
  static const int fieldVolumeSac = 125;
  static const int fieldRmv = 126;
  static const int fieldAscentRate = 127;
  static const int fieldPo2 = 129;
  static const int fieldCoreTemperature = 139;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  RecordMesg() : super.from(Profile.getMesg(MesgNum.record));
  RecordMesg.fromMesg(super.mesg) : super.from();

  DateTime? getTimestamp() {
    var val = getFieldValue(
      253,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getPositionLat() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getPositionLong() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAltitude() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getHeartRate() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCadence() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getDistance() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getSpeed() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getPower() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCompressedSpeedDistance() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getGrade() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getResistance() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTimeFromCourse() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCycleLength() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getTemperature() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getSpeed1s() {
    var val = getFieldValue(
      17,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getCycles() {
    var val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalCycles() {
    var val = getFieldValue(
      19,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCompressedAccumulatedPower() {
    var val = getFieldValue(
      28,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAccumulatedPower() {
    var val = getFieldValue(
      29,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLeftRightBalance() {
    var val = getFieldValue(
      30,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getGpsAccuracy() {
    var val = getFieldValue(
      31,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getVerticalSpeed() {
    var val = getFieldValue(
      32,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getCalories() {
    var val = getFieldValue(
      33,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getVerticalOscillation() {
    var val = getFieldValue(
      39,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getStanceTimePercent() {
    var val = getFieldValue(
      40,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getStanceTime() {
    var val = getFieldValue(
      41,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getActivityType() {
    var val = getFieldValue(
      42,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getLeftTorqueEffectiveness() {
    var val = getFieldValue(
      43,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getRightTorqueEffectiveness() {
    var val = getFieldValue(
      44,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getLeftPedalSmoothness() {
    var val = getFieldValue(
      45,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getRightPedalSmoothness() {
    var val = getFieldValue(
      46,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCombinedPedalSmoothness() {
    var val = getFieldValue(
      47,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTime128() {
    var val = getFieldValue(
      48,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getStrokeType() {
    var val = getFieldValue(
      49,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getZone() {
    var val = getFieldValue(
      50,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getBallSpeed() {
    var val = getFieldValue(
      51,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCadence256() {
    var val = getFieldValue(
      52,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getFractionalCadence() {
    var val = getFieldValue(
      53,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalHemoglobinConc() {
    var val = getFieldValue(
      54,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalHemoglobinConcMin() {
    var val = getFieldValue(
      55,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalHemoglobinConcMax() {
    var val = getFieldValue(
      56,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getSaturatedHemoglobinPercent() {
    var val = getFieldValue(
      57,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getSaturatedHemoglobinPercentMin() {
    var val = getFieldValue(
      58,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getSaturatedHemoglobinPercentMax() {
    var val = getFieldValue(
      59,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getDeviceIndex() {
    var val = getFieldValue(
      62,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLeftPco() {
    var val = getFieldValue(
      67,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRightPco() {
    var val = getFieldValue(
      68,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getLeftPowerPhase() {
    var val = getFieldValue(
      69,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getLeftPowerPhasePeak() {
    var val = getFieldValue(
      70,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getRightPowerPhase() {
    var val = getFieldValue(
      71,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getRightPowerPhasePeak() {
    var val = getFieldValue(
      72,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedSpeed() {
    var val = getFieldValue(
      73,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedAltitude() {
    var val = getFieldValue(
      78,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getBatterySoc() {
    var val = getFieldValue(
      81,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getMotorPower() {
    var val = getFieldValue(
      82,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getVerticalRatio() {
    var val = getFieldValue(
      83,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getStanceTimeBalance() {
    var val = getFieldValue(
      84,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getStepLength() {
    var val = getFieldValue(
      85,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCycleLength16() {
    var val = getFieldValue(
      87,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getAbsolutePressure() {
    var val = getFieldValue(
      91,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getDepth() {
    var val = getFieldValue(
      92,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getNextStopDepth() {
    var val = getFieldValue(
      93,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getNextStopTime() {
    var val = getFieldValue(
      94,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTimeToSurface() {
    var val = getFieldValue(
      95,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNdlTime() {
    var val = getFieldValue(
      96,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCnsLoad() {
    var val = getFieldValue(
      97,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getN2Load() {
    var val = getFieldValue(
      98,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRespirationRate() {
    var val = getFieldValue(
      99,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getEnhancedRespirationRate() {
    var val = getFieldValue(
      108,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getGrit() {
    var val = getFieldValue(
      114,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getFlow() {
    var val = getFieldValue(
      115,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCurrentStress() {
    var val = getFieldValue(
      116,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getEbikeTravelRange() {
    var val = getFieldValue(
      117,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEbikeBatteryLevel() {
    var val = getFieldValue(
      118,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEbikeAssistMode() {
    var val = getFieldValue(
      119,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEbikeAssistLevelPercent() {
    var val = getFieldValue(
      120,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAirTimeRemaining() {
    var val = getFieldValue(
      123,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getPressureSac() {
    var val = getFieldValue(
      124,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getVolumeSac() {
    var val = getFieldValue(
      125,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getRmv() {
    var val = getFieldValue(
      126,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAscentRate() {
    var val = getFieldValue(
      127,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getPo2() {
    var val = getFieldValue(
      129,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCoreTemperature() {
    var val = getFieldValue(
      139,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
