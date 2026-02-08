import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class CapabilitiesMesg extends Mesg {
  static const int fieldLanguages = 0;
  static const int fieldSports = 1;
  static const int fieldWorkoutsSupported = 21;
  static const int fieldConnectivitySupported = 23;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  CapabilitiesMesg() : super.from(Profile.getMesg(MesgNum.capabilities));
  CapabilitiesMesg.fromMesg(super.mesg) : super.from();

  int? getLanguages() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSports() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getWorkoutsSupported() {
    final val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getConnectivitySupported() {
    final val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
