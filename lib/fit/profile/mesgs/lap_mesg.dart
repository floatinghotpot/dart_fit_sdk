import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class LapTotalCyclesSubfield {
  static const int TotalStrides = 0;
  static const int TotalStrokes = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class LapAvgCadenceSubfield {
  static const int AvgRunningCadence = 0;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class LapMaxCadenceSubfield {
  static const int MaxRunningCadence = 0;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class LapMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldTimestamp = 253;
  static const int fieldEvent = 0;
  static const int fieldEventType = 1;
  static const int fieldStartTime = 2;
  static const int fieldStartPositionLat = 3;
  static const int fieldStartPositionLong = 4;
  static const int fieldEndPositionLat = 5;
  static const int fieldEndPositionLong = 6;
  static const int fieldTotalElapsedTime = 7;
  static const int fieldTotalTimerTime = 8;
  static const int fieldTotalDistance = 9;
  static const int fieldTotalCycles = 10;
  static const int fieldTotalCalories = 11;
  static const int fieldTotalFatCalories = 12;
  static const int fieldAvgSpeed = 13;
  static const int fieldMaxSpeed = 14;
  static const int fieldAvgHeartRate = 15;
  static const int fieldMaxHeartRate = 16;
  static const int fieldAvgCadence = 17;
  static const int fieldMaxCadence = 18;
  static const int fieldAvgPower = 19;
  static const int fieldMaxPower = 20;
  static const int fieldTotalAscent = 21;
  static const int fieldTotalDescent = 22;
  static const int fieldIntensity = 23;
  static const int fieldLapTrigger = 24;
  static const int fieldSport = 25;
  static const int fieldEventGroup = 26;
  static const int fieldNumLengths = 32;
  static const int fieldNormalizedPower = 33;
  static const int fieldLeftRightBalance = 34;
  static const int fieldFirstLengthIndex = 35;
  static const int fieldAvgStrokeDistance = 37;
  static const int fieldSwimStroke = 38;
  static const int fieldSubSport = 39;
  static const int fieldNumActiveLengths = 40;
  static const int fieldTotalWork = 41;
  static const int fieldAvgAltitude = 42;
  static const int fieldMaxAltitude = 43;
  static const int fieldGpsAccuracy = 44;
  static const int fieldAvgGrade = 45;
  static const int fieldAvgPosGrade = 46;
  static const int fieldAvgNegGrade = 47;
  static const int fieldMaxPosGrade = 48;
  static const int fieldMaxNegGrade = 49;
  static const int fieldAvgTemperature = 50;
  static const int fieldMaxTemperature = 51;
  static const int fieldTotalMovingTime = 52;
  static const int fieldAvgPosVerticalSpeed = 53;
  static const int fieldAvgNegVerticalSpeed = 54;
  static const int fieldMaxPosVerticalSpeed = 55;
  static const int fieldMaxNegVerticalSpeed = 56;
  static const int fieldTimeInHrZone = 57;
  static const int fieldTimeInSpeedZone = 58;
  static const int fieldTimeInCadenceZone = 59;
  static const int fieldTimeInPowerZone = 60;
  static const int fieldRepetitionNum = 61;
  static const int fieldMinAltitude = 62;
  static const int fieldMinHeartRate = 63;
  static const int fieldWktStepIndex = 71;
  static const int fieldOpponentScore = 74;
  static const int fieldStrokeCount = 75;
  static const int fieldZoneCount = 76;
  static const int fieldAvgVerticalOscillation = 77;
  static const int fieldAvgStanceTimePercent = 78;
  static const int fieldAvgStanceTime = 79;
  static const int fieldAvgFractionalCadence = 80;
  static const int fieldMaxFractionalCadence = 81;
  static const int fieldTotalFractionalCycles = 82;
  static const int fieldPlayerScore = 83;
  static const int fieldAvgTotalHemoglobinConc = 84;
  static const int fieldMinTotalHemoglobinConc = 85;
  static const int fieldMaxTotalHemoglobinConc = 86;
  static const int fieldAvgSaturatedHemoglobinPercent = 87;
  static const int fieldMinSaturatedHemoglobinPercent = 88;
  static const int fieldMaxSaturatedHemoglobinPercent = 89;
  static const int fieldAvgLeftTorqueEffectiveness = 91;
  static const int fieldAvgRightTorqueEffectiveness = 92;
  static const int fieldAvgLeftPedalSmoothness = 93;
  static const int fieldAvgRightPedalSmoothness = 94;
  static const int fieldAvgCombinedPedalSmoothness = 95;
  static const int fieldTimeStanding = 98;
  static const int fieldStandCount = 99;
  static const int fieldAvgLeftPco = 100;
  static const int fieldAvgRightPco = 101;
  static const int fieldAvgLeftPowerPhase = 102;
  static const int fieldAvgLeftPowerPhasePeak = 103;
  static const int fieldAvgRightPowerPhase = 104;
  static const int fieldAvgRightPowerPhasePeak = 105;
  static const int fieldAvgPowerPosition = 106;
  static const int fieldMaxPowerPosition = 107;
  static const int fieldAvgCadencePosition = 108;
  static const int fieldMaxCadencePosition = 109;
  static const int fieldEnhancedAvgSpeed = 110;
  static const int fieldEnhancedMaxSpeed = 111;
  static const int fieldEnhancedAvgAltitude = 112;
  static const int fieldEnhancedMinAltitude = 113;
  static const int fieldEnhancedMaxAltitude = 114;
  static const int fieldAvgLevMotorPower = 115;
  static const int fieldMaxLevMotorPower = 116;
  static const int fieldLevBatteryConsumption = 117;
  static const int fieldAvgVerticalRatio = 118;
  static const int fieldAvgStanceTimeBalance = 119;
  static const int fieldAvgStepLength = 120;
  static const int fieldAvgVam = 121;
  static const int fieldAvgDepth = 122;
  static const int fieldMaxDepth = 123;
  static const int fieldMinTemperature = 124;
  static const int fieldEnhancedAvgRespirationRate = 136;
  static const int fieldEnhancedMaxRespirationRate = 137;
  static const int fieldAvgRespirationRate = 147;
  static const int fieldMaxRespirationRate = 148;
  static const int fieldTotalGrit = 149;
  static const int fieldTotalFlow = 150;
  static const int fieldJumpCount = 151;
  static const int fieldAvgGrit = 153;
  static const int fieldAvgFlow = 154;
  static const int fieldTotalFractionalAscent = 156;
  static const int fieldTotalFractionalDescent = 157;
  static const int fieldAvgCoreTemperature = 158;
  static const int fieldMinCoreTemperature = 159;
  static const int fieldMaxCoreTemperature = 160;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  LapMesg() : super.from(Profile.getMesg(MesgNum.lap));
  LapMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

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

  int? getEvent() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEventType() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  DateTime? getStartTime() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getStartPositionLat() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getStartPositionLong() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEndPositionLat() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEndPositionLong() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTotalElapsedTime() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalTimerTime() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalDistance() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getTotalCycles() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalStrides() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: LapTotalCyclesSubfield.TotalStrides,
    );
    return val as int?;
  }

  int? getTotalStrokes() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: LapTotalCyclesSubfield.TotalStrokes,
    );
    return val as int?;
  }

  int? getTotalCalories() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalFatCalories() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgSpeed() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxSpeed() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getAvgHeartRate() {
    var val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxHeartRate() {
    var val = getFieldValue(
      16,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgCadence() {
    var val = getFieldValue(
      17,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgRunningCadence() {
    var val = getFieldValue(
      17,
      index: 0,
      subfieldInfo: LapAvgCadenceSubfield.AvgRunningCadence,
    );
    return val as int?;
  }

  int? getMaxCadence() {
    var val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxRunningCadence() {
    var val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: LapMaxCadenceSubfield.MaxRunningCadence,
    );
    return val as int?;
  }

  int? getAvgPower() {
    var val = getFieldValue(
      19,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxPower() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalAscent() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalDescent() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getIntensity() {
    var val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLapTrigger() {
    var val = getFieldValue(
      24,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSport() {
    var val = getFieldValue(
      25,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEventGroup() {
    var val = getFieldValue(
      26,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNumLengths() {
    var val = getFieldValue(
      32,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNormalizedPower() {
    var val = getFieldValue(
      33,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLeftRightBalance() {
    var val = getFieldValue(
      34,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFirstLengthIndex() {
    var val = getFieldValue(
      35,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgStrokeDistance() {
    var val = getFieldValue(
      37,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getSwimStroke() {
    var val = getFieldValue(
      38,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSubSport() {
    var val = getFieldValue(
      39,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNumActiveLengths() {
    var val = getFieldValue(
      40,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalWork() {
    var val = getFieldValue(
      41,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgAltitude() {
    var val = getFieldValue(
      42,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxAltitude() {
    var val = getFieldValue(
      43,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getGpsAccuracy() {
    var val = getFieldValue(
      44,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgGrade() {
    var val = getFieldValue(
      45,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgPosGrade() {
    var val = getFieldValue(
      46,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgNegGrade() {
    var val = getFieldValue(
      47,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxPosGrade() {
    var val = getFieldValue(
      48,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxNegGrade() {
    var val = getFieldValue(
      49,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getAvgTemperature() {
    var val = getFieldValue(
      50,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxTemperature() {
    var val = getFieldValue(
      51,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTotalMovingTime() {
    var val = getFieldValue(
      52,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgPosVerticalSpeed() {
    var val = getFieldValue(
      53,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgNegVerticalSpeed() {
    var val = getFieldValue(
      54,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxPosVerticalSpeed() {
    var val = getFieldValue(
      55,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxNegVerticalSpeed() {
    var val = getFieldValue(
      56,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInHrZone() {
    var val = getFieldValue(
      57,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInSpeedZone() {
    var val = getFieldValue(
      58,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInCadenceZone() {
    var val = getFieldValue(
      59,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInPowerZone() {
    var val = getFieldValue(
      60,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getRepetitionNum() {
    var val = getFieldValue(
      61,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getMinAltitude() {
    var val = getFieldValue(
      62,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getMinHeartRate() {
    var val = getFieldValue(
      63,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getWktStepIndex() {
    var val = getFieldValue(
      71,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOpponentScore() {
    var val = getFieldValue(
      74,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getStrokeCount() {
    var val = getFieldValue(
      75,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getZoneCount() {
    var val = getFieldValue(
      76,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgVerticalOscillation() {
    var val = getFieldValue(
      77,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgStanceTimePercent() {
    var val = getFieldValue(
      78,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgStanceTime() {
    var val = getFieldValue(
      79,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgFractionalCadence() {
    var val = getFieldValue(
      80,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxFractionalCadence() {
    var val = getFieldValue(
      81,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalFractionalCycles() {
    var val = getFieldValue(
      82,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getPlayerScore() {
    var val = getFieldValue(
      83,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgTotalHemoglobinConc() {
    var val = getFieldValue(
      84,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMinTotalHemoglobinConc() {
    var val = getFieldValue(
      85,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxTotalHemoglobinConc() {
    var val = getFieldValue(
      86,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgSaturatedHemoglobinPercent() {
    var val = getFieldValue(
      87,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMinSaturatedHemoglobinPercent() {
    var val = getFieldValue(
      88,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxSaturatedHemoglobinPercent() {
    var val = getFieldValue(
      89,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgLeftTorqueEffectiveness() {
    var val = getFieldValue(
      91,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRightTorqueEffectiveness() {
    var val = getFieldValue(
      92,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgLeftPedalSmoothness() {
    var val = getFieldValue(
      93,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRightPedalSmoothness() {
    var val = getFieldValue(
      94,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgCombinedPedalSmoothness() {
    var val = getFieldValue(
      95,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeStanding() {
    var val = getFieldValue(
      98,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getStandCount() {
    var val = getFieldValue(
      99,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgLeftPco() {
    var val = getFieldValue(
      100,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgRightPco() {
    var val = getFieldValue(
      101,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgLeftPowerPhase() {
    var val = getFieldValue(
      102,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgLeftPowerPhasePeak() {
    var val = getFieldValue(
      103,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRightPowerPhase() {
    var val = getFieldValue(
      104,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRightPowerPhasePeak() {
    var val = getFieldValue(
      105,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getAvgPowerPosition() {
    var val = getFieldValue(
      106,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxPowerPosition() {
    var val = getFieldValue(
      107,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgCadencePosition() {
    var val = getFieldValue(
      108,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxCadencePosition() {
    var val = getFieldValue(
      109,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getEnhancedAvgSpeed() {
    var val = getFieldValue(
      110,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedMaxSpeed() {
    var val = getFieldValue(
      111,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedAvgAltitude() {
    var val = getFieldValue(
      112,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedMinAltitude() {
    var val = getFieldValue(
      113,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedMaxAltitude() {
    var val = getFieldValue(
      114,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getAvgLevMotorPower() {
    var val = getFieldValue(
      115,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxLevMotorPower() {
    var val = getFieldValue(
      116,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getLevBatteryConsumption() {
    var val = getFieldValue(
      117,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgVerticalRatio() {
    var val = getFieldValue(
      118,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgStanceTimeBalance() {
    var val = getFieldValue(
      119,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgStepLength() {
    var val = getFieldValue(
      120,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgVam() {
    var val = getFieldValue(
      121,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgDepth() {
    var val = getFieldValue(
      122,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxDepth() {
    var val = getFieldValue(
      123,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getMinTemperature() {
    var val = getFieldValue(
      124,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getEnhancedAvgRespirationRate() {
    var val = getFieldValue(
      136,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedMaxRespirationRate() {
    var val = getFieldValue(
      137,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getAvgRespirationRate() {
    var val = getFieldValue(
      147,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxRespirationRate() {
    var val = getFieldValue(
      148,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTotalGrit() {
    var val = getFieldValue(
      149,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalFlow() {
    var val = getFieldValue(
      150,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getJumpCount() {
    var val = getFieldValue(
      151,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgGrit() {
    var val = getFieldValue(
      153,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgFlow() {
    var val = getFieldValue(
      154,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalFractionalAscent() {
    var val = getFieldValue(
      156,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalFractionalDescent() {
    var val = getFieldValue(
      157,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgCoreTemperature() {
    var val = getFieldValue(
      158,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMinCoreTemperature() {
    var val = getFieldValue(
      159,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxCoreTemperature() {
    var val = getFieldValue(
      160,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
