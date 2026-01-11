import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class TimestampCorrelationMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldFractionalTimestamp = 0;
  static const int fieldSystemTimestamp = 1;
  static const int fieldFractionalSystemTimestamp = 2;
  static const int fieldLocalTimestamp = 3;
  static const int fieldTimestampMs = 4;
  static const int fieldSystemTimestampMs = 5;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  TimestampCorrelationMesg()
    : super.from(Profile.getMesg(MesgNum.timestampCorrelation));
  TimestampCorrelationMesg.fromMesg(Mesg mesg) : super.from(mesg);

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

  double? getFractionalTimestamp() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  DateTime? getSystemTimestamp() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  double? getFractionalSystemTimestamp() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getLocalTimestamp() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTimestampMs() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSystemTimestampMs() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
