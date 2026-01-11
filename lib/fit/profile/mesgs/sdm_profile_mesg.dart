import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SdmProfileMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldEnabled = 0;
  static const int fieldSdmAntId = 1;
  static const int fieldSdmCalFactor = 2;
  static const int fieldOdometer = 3;
  static const int fieldSpeedSource = 4;
  static const int fieldSdmAntIdTransType = 5;
  static const int fieldOdometerRollover = 7;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SdmProfileMesg() : super.from(Profile.getMesg(MesgNum.sdmProfile));
  SdmProfileMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getEnabled() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getSdmAntId() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getSdmCalFactor() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getOdometer() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  bool? getSpeedSource() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getSdmAntIdTransType() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOdometerRollover() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
