import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class OhrSettingsMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldEnabled = 0;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  OhrSettingsMesg() : super.from(Profile.getMesg(MesgNum.ohrSettings));
  OhrSettingsMesg.fromMesg(super.mesg) : super.from();

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

  int? getEnabled() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
