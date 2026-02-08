import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SoftwareMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldVersion = 3;
  static const int fieldPartNumber = 5;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SoftwareMesg() : super.from(Profile.getMesg(MesgNum.software));
  SoftwareMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    final val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getVersion() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  String? getPartNumber() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
