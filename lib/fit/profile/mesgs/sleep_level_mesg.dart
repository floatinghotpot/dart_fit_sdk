import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SleepLevelMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldSleepLevel = 0;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SleepLevelMesg() : super.from(Profile.getMesg(MesgNum.sleepLevel));
  SleepLevelMesg.fromMesg(Mesg mesg) : super.from(mesg);

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

  int? getSleepLevel() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
