import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class StressLevelMesg extends Mesg {
  static const int fieldStressLevelValue = 0;
  static const int fieldStressLevelTime = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  StressLevelMesg() : super.from(Profile.getMesg(MesgNum.stressLevel));
  StressLevelMesg.fromMesg(super.mesg) : super.from();

  int? getStressLevelValue() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  DateTime? getStressLevelTime() {
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
}
