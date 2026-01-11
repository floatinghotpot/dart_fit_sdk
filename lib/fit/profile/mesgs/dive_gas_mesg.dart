import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class DiveGasMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldHeliumContent = 0;
  static const int fieldOxygenContent = 1;
  static const int fieldStatus = 2;
  static const int fieldMode = 3;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  DiveGasMesg() : super.from(Profile.getMesg(MesgNum.diveGas));
  DiveGasMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHeliumContent() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOxygenContent() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getStatus() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMode() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
