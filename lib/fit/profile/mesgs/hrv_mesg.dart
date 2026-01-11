import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class HrvMesg extends Mesg {
  static const int fieldTime = 0;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  HrvMesg() : super.from(Profile.getMesg(MesgNum.hrv));
  HrvMesg.fromMesg(super.mesg) : super.from();

  double? getTime() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
