import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class TrainingSettingsMesg extends Mesg {
  static const int fieldTargetDistance = 31;
  static const int fieldTargetSpeed = 32;
  static const int fieldTargetTime = 33;
  static const int fieldPreciseTargetSpeed = 153;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  TrainingSettingsMesg()
    : super.from(Profile.getMesg(MesgNum.trainingSettings));
  TrainingSettingsMesg.fromMesg(super.mesg) : super.from();

  double? getTargetDistance() {
    var val = getFieldValue(
      31,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTargetSpeed() {
    var val = getFieldValue(
      32,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getTargetTime() {
    var val = getFieldValue(
      33,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getPreciseTargetSpeed() {
    var val = getFieldValue(
      153,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
