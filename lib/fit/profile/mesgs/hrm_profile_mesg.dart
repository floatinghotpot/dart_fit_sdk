import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class HrmProfileMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldEnabled = 0;
  static const int fieldHrmAntId = 1;
  static const int fieldLogHrv = 2;
  static const int fieldHrmAntIdTransType = 3;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  HrmProfileMesg() : super.from(Profile.getMesg(MesgNum.hrmProfile));
  HrmProfileMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getEnabled() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getHrmAntId() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getLogHrv() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getHrmAntIdTransType() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
