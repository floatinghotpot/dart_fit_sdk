import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ThreeDSensorCalibrationCalibrationFactorSubfield {
  static const int AccelCalFactor = 0;
  static const int GyroCalFactor = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class ThreeDSensorCalibrationMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldSensorType = 0;
  static const int fieldCalibrationFactor = 1;
  static const int fieldCalibrationDivisor = 2;
  static const int fieldLevelShift = 3;
  static const int fieldOffsetCal = 4;
  static const int fieldOrientationMatrix = 5;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ThreeDSensorCalibrationMesg()
    : super.from(Profile.getMesg(MesgNum.threeDSensorCalibration));
  ThreeDSensorCalibrationMesg.fromMesg(super.mesg) : super.from();

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

  int? getSensorType() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCalibrationFactor() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAccelCalFactor() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo:
          ThreeDSensorCalibrationCalibrationFactorSubfield.AccelCalFactor,
    );
    return val as int?;
  }

  int? getGyroCalFactor() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo:
          ThreeDSensorCalibrationCalibrationFactorSubfield.GyroCalFactor,
    );
    return val as int?;
  }

  int? getCalibrationDivisor() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLevelShift() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOffsetCal() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getOrientationMatrix() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
