import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ExdScreenConfigurationMesg extends Mesg {
  static const int fieldScreenIndex = 0;
  static const int fieldFieldCount = 1;
  static const int fieldLayout = 2;
  static const int fieldScreenEnabled = 3;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ExdScreenConfigurationMesg()
    : super.from(Profile.getMesg(MesgNum.exdScreenConfiguration));
  ExdScreenConfigurationMesg.fromMesg(super.mesg) : super.from();

  int? getScreenIndex() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFieldCount() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLayout() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getScreenEnabled() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }
}
