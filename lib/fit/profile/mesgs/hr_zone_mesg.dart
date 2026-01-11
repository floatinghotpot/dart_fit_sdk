import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class HrZoneMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldHighBpm = 1;
  static const int fieldName = 2;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  HrZoneMesg() : super.from(Profile.getMesg(MesgNum.hrZone));
  HrZoneMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHighBpm() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getName() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
