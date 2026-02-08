import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ZonesTargetMesg extends Mesg {
  static const int fieldMaxHeartRate = 1;
  static const int fieldThresholdHeartRate = 2;
  static const int fieldFunctionalThresholdPower = 3;
  static const int fieldHrCalcType = 5;
  static const int fieldPwrCalcType = 7;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ZonesTargetMesg() : super.from(Profile.getMesg(MesgNum.zonesTarget));
  ZonesTargetMesg.fromMesg(super.mesg) : super.from();

  int? getMaxHeartRate() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getThresholdHeartRate() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFunctionalThresholdPower() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHrCalcType() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getPwrCalcType() {
    final val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
