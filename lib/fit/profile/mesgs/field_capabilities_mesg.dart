import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class FieldCapabilitiesMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldFile = 0;
  static const int fieldMesgNum = 1;
  static const int fieldFieldNum = 2;
  static const int fieldCount = 3;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  FieldCapabilitiesMesg()
    : super.from(Profile.getMesg(MesgNum.fieldCapabilities));
  FieldCapabilitiesMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFile() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMesgNum() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFieldNum() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCount() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
