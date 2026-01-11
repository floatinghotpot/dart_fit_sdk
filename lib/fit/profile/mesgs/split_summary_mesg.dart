import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SplitSummaryMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldSplitType = 0;
  static const int fieldNumSplits = 3;
  static const int fieldTotalTimerTime = 4;
  static const int fieldTotalDistance = 5;
  static const int fieldAvgSpeed = 6;
  static const int fieldMaxSpeed = 7;
  static const int fieldTotalAscent = 8;
  static const int fieldTotalDescent = 9;
  static const int fieldAvgHeartRate = 10;
  static const int fieldMaxHeartRate = 11;
  static const int fieldAvgVertSpeed = 12;
  static const int fieldTotalCalories = 13;
  static const int fieldTotalMovingTime = 77;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SplitSummaryMesg() : super.from(Profile.getMesg(MesgNum.splitSummary));
  SplitSummaryMesg.fromMesg(super.mesg) : super.from();

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

  int? getNumSplits() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTotalTimerTime() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTotalDistance() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgSpeed() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxSpeed() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getTotalAscent() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTotalDescent() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAvgHeartRate() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxHeartRate() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgVertSpeed() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getTotalCalories() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTotalMovingTime() {
    var val = getFieldValue(
      77,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
