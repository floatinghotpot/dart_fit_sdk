import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class HsaRespirationDataMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldProcessingInterval = 0;
  static const int fieldRespirationRate = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  HsaRespirationDataMesg()
    : super.from(Profile.getMesg(MesgNum.hsaRespirationData));
  HsaRespirationDataMesg.fromMesg(super.mesg) : super.from();

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

  int? getProcessingInterval() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getRespirationRate() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
