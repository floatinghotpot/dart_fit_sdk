import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class OneDSensorCalibrationCalibrationFactorSubfield {
  static const int BaroCalFactor = 0;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class OneDSensorCalibrationMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldSensorType = 0;
  static const int fieldCalibrationFactor = 1;
  static const int fieldCalibrationDivisor = 2;
  static const int fieldLevelShift = 3;
  static const int fieldOffsetCal = 4;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  OneDSensorCalibrationMesg()
    : super.from(Profile.getMesg(MesgNum.oneDSensorCalibration));
  OneDSensorCalibrationMesg.fromMesg(super.mesg) : super.from();

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

  int? getSensorType() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCalibrationFactor() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBaroCalFactor() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo:
          OneDSensorCalibrationCalibrationFactorSubfield.BaroCalFactor,
    );
    return val as int?;
  }

  int? getCalibrationDivisor() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLevelShift() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOffsetCal() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
