import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SegmentLapTotalCyclesSubfield {
  static const int TotalStrokes = 0;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class SegmentLapMesg extends Mesg {
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
  static const int fieldSport = 23;
  static const int fieldEventGroup = 24;
  static const int fieldNecLat = 25;
  static const int fieldNecLong = 26;
  static const int fieldSwcLat = 27;
  static const int fieldSwcLong = 28;
  static const int fieldName = 29;
  static const int fieldNormalizedPower = 30;
  static const int fieldLeftRightBalance = 31;
  static const int fieldSubSport = 32;
  static const int fieldTotalWork = 33;
  static const int fieldAvgAltitude = 34;
  static const int fieldMaxAltitude = 35;
  static const int fieldGpsAccuracy = 36;
  static const int fieldAvgGrade = 37;
  static const int fieldAvgPosGrade = 38;
  static const int fieldAvgNegGrade = 39;
  static const int fieldMaxPosGrade = 40;
  static const int fieldMaxNegGrade = 41;
  static const int fieldAvgTemperature = 42;
  static const int fieldMaxTemperature = 43;
  static const int fieldTotalMovingTime = 44;
  static const int fieldAvgPosVerticalSpeed = 45;
  static const int fieldAvgNegVerticalSpeed = 46;
  static const int fieldMaxPosVerticalSpeed = 47;
  static const int fieldMaxNegVerticalSpeed = 48;
  static const int fieldTimeInHrZone = 49;
  static const int fieldTimeInSpeedZone = 50;
  static const int fieldTimeInCadenceZone = 51;
  static const int fieldTimeInPowerZone = 52;
  static const int fieldRepetitionNum = 53;
  static const int fieldMinAltitude = 54;
  static const int fieldMinHeartRate = 55;
  static const int fieldActiveTime = 56;
  static const int fieldWktStepIndex = 57;
  static const int fieldSportEvent = 58;
  static const int fieldAvgLeftTorqueEffectiveness = 59;
  static const int fieldAvgRightTorqueEffectiveness = 60;
  static const int fieldAvgLeftPedalSmoothness = 61;
  static const int fieldAvgRightPedalSmoothness = 62;
  static const int fieldAvgCombinedPedalSmoothness = 63;
  static const int fieldStatus = 64;
  static const int fieldUuid = 65;
  static const int fieldAvgFractionalCadence = 66;
  static const int fieldMaxFractionalCadence = 67;
  static const int fieldTotalFractionalCycles = 68;
  static const int fieldFrontGearShiftCount = 69;
  static const int fieldRearGearShiftCount = 70;
  static const int fieldTimeStanding = 71;
  static const int fieldStandCount = 72;
  static const int fieldAvgLeftPco = 73;
  static const int fieldAvgRightPco = 74;
  static const int fieldAvgLeftPowerPhase = 75;
  static const int fieldAvgLeftPowerPhasePeak = 76;
  static const int fieldAvgRightPowerPhase = 77;
  static const int fieldAvgRightPowerPhasePeak = 78;
  static const int fieldAvgPowerPosition = 79;
  static const int fieldMaxPowerPosition = 80;
  static const int fieldAvgCadencePosition = 81;
  static const int fieldMaxCadencePosition = 82;
  static const int fieldManufacturer = 83;
  static const int fieldTotalGrit = 84;
  static const int fieldTotalFlow = 85;
  static const int fieldAvgGrit = 86;
  static const int fieldAvgFlow = 87;
  static const int fieldTotalFractionalAscent = 89;
  static const int fieldTotalFractionalDescent = 90;
  static const int fieldEnhancedAvgAltitude = 91;
  static const int fieldEnhancedMaxAltitude = 92;
  static const int fieldEnhancedMinAltitude = 93;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SegmentLapMesg() : super.from(Profile.getMesg(MesgNum.segmentLap));
  SegmentLapMesg.fromMesg(super.mesg) : super.from();

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

  int? getTotalStrokes() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: SegmentLapTotalCyclesSubfield.TotalStrokes,
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

  int? getMaxCadence() {
    var val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
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

  int? getSport() {
    var val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEventGroup() {
    var val = getFieldValue(
      24,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNecLat() {
    var val = getFieldValue(
      25,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNecLong() {
    var val = getFieldValue(
      26,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSwcLat() {
    var val = getFieldValue(
      27,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSwcLong() {
    var val = getFieldValue(
      28,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getName() {
    var val = getFieldValue(
      29,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getNormalizedPower() {
    var val = getFieldValue(
      30,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLeftRightBalance() {
    var val = getFieldValue(
      31,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSubSport() {
    var val = getFieldValue(
      32,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalWork() {
    var val = getFieldValue(
      33,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgAltitude() {
    var val = getFieldValue(
      34,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxAltitude() {
    var val = getFieldValue(
      35,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getGpsAccuracy() {
    var val = getFieldValue(
      36,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgGrade() {
    var val = getFieldValue(
      37,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgPosGrade() {
    var val = getFieldValue(
      38,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgNegGrade() {
    var val = getFieldValue(
      39,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxPosGrade() {
    var val = getFieldValue(
      40,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxNegGrade() {
    var val = getFieldValue(
      41,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getAvgTemperature() {
    var val = getFieldValue(
      42,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxTemperature() {
    var val = getFieldValue(
      43,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTotalMovingTime() {
    var val = getFieldValue(
      44,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgPosVerticalSpeed() {
    var val = getFieldValue(
      45,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgNegVerticalSpeed() {
    var val = getFieldValue(
      46,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxPosVerticalSpeed() {
    var val = getFieldValue(
      47,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxNegVerticalSpeed() {
    var val = getFieldValue(
      48,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInHrZone() {
    var val = getFieldValue(
      49,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInSpeedZone() {
    var val = getFieldValue(
      50,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInCadenceZone() {
    var val = getFieldValue(
      51,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInPowerZone() {
    var val = getFieldValue(
      52,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getRepetitionNum() {
    var val = getFieldValue(
      53,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getMinAltitude() {
    var val = getFieldValue(
      54,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getMinHeartRate() {
    var val = getFieldValue(
      55,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getActiveTime() {
    var val = getFieldValue(
      56,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getWktStepIndex() {
    var val = getFieldValue(
      57,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSportEvent() {
    var val = getFieldValue(
      58,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgLeftTorqueEffectiveness() {
    var val = getFieldValue(
      59,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRightTorqueEffectiveness() {
    var val = getFieldValue(
      60,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgLeftPedalSmoothness() {
    var val = getFieldValue(
      61,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRightPedalSmoothness() {
    var val = getFieldValue(
      62,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgCombinedPedalSmoothness() {
    var val = getFieldValue(
      63,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getStatus() {
    var val = getFieldValue(
      64,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getUuid() {
    var val = getFieldValue(
      65,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  double? getAvgFractionalCadence() {
    var val = getFieldValue(
      66,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxFractionalCadence() {
    var val = getFieldValue(
      67,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalFractionalCycles() {
    var val = getFieldValue(
      68,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getFrontGearShiftCount() {
    var val = getFieldValue(
      69,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRearGearShiftCount() {
    var val = getFieldValue(
      70,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTimeStanding() {
    var val = getFieldValue(
      71,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getStandCount() {
    var val = getFieldValue(
      72,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgLeftPco() {
    var val = getFieldValue(
      73,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgRightPco() {
    var val = getFieldValue(
      74,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgLeftPowerPhase() {
    var val = getFieldValue(
      75,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgLeftPowerPhasePeak() {
    var val = getFieldValue(
      76,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRightPowerPhase() {
    var val = getFieldValue(
      77,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRightPowerPhasePeak() {
    var val = getFieldValue(
      78,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getAvgPowerPosition() {
    var val = getFieldValue(
      79,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxPowerPosition() {
    var val = getFieldValue(
      80,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgCadencePosition() {
    var val = getFieldValue(
      81,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxCadencePosition() {
    var val = getFieldValue(
      82,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getManufacturer() {
    var val = getFieldValue(
      83,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTotalGrit() {
    var val = getFieldValue(
      84,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalFlow() {
    var val = getFieldValue(
      85,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgGrit() {
    var val = getFieldValue(
      86,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgFlow() {
    var val = getFieldValue(
      87,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalFractionalAscent() {
    var val = getFieldValue(
      89,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalFractionalDescent() {
    var val = getFieldValue(
      90,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedAvgAltitude() {
    var val = getFieldValue(
      91,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedMaxAltitude() {
    var val = getFieldValue(
      92,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getEnhancedMinAltitude() {
    var val = getFieldValue(
      93,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
