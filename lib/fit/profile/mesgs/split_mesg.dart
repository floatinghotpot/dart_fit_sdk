import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SplitMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldSplitType = 0;
  static const int fieldTotalElapsedTime = 1;
  static const int fieldTotalTimerTime = 2;
  static const int fieldTotalDistance = 3;
  static const int fieldAvgSpeed = 4;
  static const int fieldStartTime = 9;
  static const int fieldTotalAscent = 13;
  static const int fieldTotalDescent = 14;
  static const int fieldStartPositionLat = 21;
  static const int fieldStartPositionLong = 22;
  static const int fieldEndPositionLat = 23;
  static const int fieldEndPositionLong = 24;
  static const int fieldMaxSpeed = 25;
  static const int fieldAvgVertSpeed = 26;
  static const int fieldEndTime = 27;
  static const int fieldTotalCalories = 28;
  static const int fieldStartElevation = 74;
  static const int fieldTotalMovingTime = 110;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SplitMesg() : super.from(Profile.getMesg(MesgNum.split));
  SplitMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSplitType() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTotalElapsedTime() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalTimerTime() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalDistance() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgSpeed() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  DateTime? getStartTime() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getTotalAscent() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalDescent() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getStartPositionLat() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getStartPositionLong() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEndPositionLat() {
    var val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEndPositionLong() {
    var val = getFieldValue(
      24,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getMaxSpeed() {
    var val = getFieldValue(
      25,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgVertSpeed() {
    var val = getFieldValue(
      26,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  DateTime? getEndTime() {
    var val = getFieldValue(
      27,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getTotalCalories() {
    var val = getFieldValue(
      28,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getStartElevation() {
    var val = getFieldValue(
      74,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalMovingTime() {
    var val = getFieldValue(
      110,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
