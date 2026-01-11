import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class MemoGlobMesg extends Mesg {
  static const int fieldPartIndex = 250;
  static const int fieldMemo = 0;
  static const int fieldMesgNum = 1;
  static const int fieldParentIndex = 2;
  static const int fieldFieldNum = 3;
  static const int fieldData = 4;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  MemoGlobMesg() : super.from(Profile.getMesg(MesgNum.memoGlob));
  MemoGlobMesg.fromMesg(super.mesg) : super.from();

  int? getPartIndex() {
    var val = getFieldValue(
      250,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMemo() {
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

  int? getParentIndex() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFieldNum() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getData() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
