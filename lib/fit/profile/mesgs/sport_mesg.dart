import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SportMesg extends Mesg {
  static const int fieldSport = 0;
  static const int fieldSubSport = 1;
  static const int fieldName = 3;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SportMesg() : super.from(Profile.getMesg(MesgNum.sport));
  SportMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getSport() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSubSport() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getName() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
