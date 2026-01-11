import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SpeedZoneMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldHighValue = 0;
  static const int fieldName = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SpeedZoneMesg() : super.from(Profile.getMesg(MesgNum.speedZone));
  SpeedZoneMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getHighValue() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
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
