import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class CadenceZoneMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldHighValue = 0;
  static const int fieldName = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  CadenceZoneMesg() : super.from(Profile.getMesg(MesgNum.cadenceZone));
  CadenceZoneMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHighValue() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getName() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
