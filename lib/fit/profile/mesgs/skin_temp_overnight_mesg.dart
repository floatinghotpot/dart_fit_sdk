import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SkinTempOvernightMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldLocalTimestamp = 0;
  static const int fieldAverageDeviation = 1;
  static const int fieldAverage7DayDeviation = 2;
  static const int fieldNightlyValue = 4;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SkinTempOvernightMesg()
    : super.from(Profile.getMesg(MesgNum.skinTempOvernight));
  SkinTempOvernightMesg.fromMesg(super.mesg) : super.from();

  DateTime? getTimestamp() {
    final val = getFieldValue(
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

  int? getLocalTimestamp() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAverageDeviation() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAverage7DayDeviation() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getNightlyValue() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
