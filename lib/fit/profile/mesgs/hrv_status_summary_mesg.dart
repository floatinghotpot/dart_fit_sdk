import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class HrvStatusSummaryMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldWeeklyAverage = 0;
  static const int fieldLastNightAverage = 1;
  static const int fieldLastNight5MinHigh = 2;
  static const int fieldBaselineLowUpper = 3;
  static const int fieldBaselineBalancedLower = 4;
  static const int fieldBaselineBalancedUpper = 5;
  static const int fieldStatus = 6;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  HrvStatusSummaryMesg()
    : super.from(Profile.getMesg(MesgNum.hrvStatusSummary));
  HrvStatusSummaryMesg.fromMesg(Mesg mesg) : super.from(mesg);

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

  double? getWeeklyAverage() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getLastNightAverage() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getLastNight5MinHigh() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getBaselineLowUpper() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getBaselineBalancedLower() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getBaselineBalancedUpper() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getStatus() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
