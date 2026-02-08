import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SleepDisruptionOvernightSeverityMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldSeverity = 0;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SleepDisruptionOvernightSeverityMesg()
    : super.from(Profile.getMesg(MesgNum.sleepDisruptionOvernightSeverity));
  SleepDisruptionOvernightSeverityMesg.fromMesg(super.mesg) : super.from();

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

  int? getSeverity() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
