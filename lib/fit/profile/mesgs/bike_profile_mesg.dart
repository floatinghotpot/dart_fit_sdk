import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class BikeProfileMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldName = 0;
  static const int fieldSport = 1;
  static const int fieldSubSport = 2;
  static const int fieldOdometer = 3;
  static const int fieldBikeSpdAntId = 4;
  static const int fieldBikeCadAntId = 5;
  static const int fieldBikeSpdcadAntId = 6;
  static const int fieldBikePowerAntId = 7;
  static const int fieldCustomWheelsize = 8;
  static const int fieldAutoWheelsize = 9;
  static const int fieldBikeWeight = 10;
  static const int fieldPowerCalFactor = 11;
  static const int fieldAutoWheelCal = 12;
  static const int fieldAutoPowerZero = 13;
  static const int fieldId = 14;
  static const int fieldSpdEnabled = 15;
  static const int fieldCadEnabled = 16;
  static const int fieldSpdcadEnabled = 17;
  static const int fieldPowerEnabled = 18;
  static const int fieldCrankLength = 19;
  static const int fieldEnabled = 20;
  static const int fieldBikeSpdAntIdTransType = 21;
  static const int fieldBikeCadAntIdTransType = 22;
  static const int fieldBikeSpdcadAntIdTransType = 23;
  static const int fieldBikePowerAntIdTransType = 24;
  static const int fieldOdometerRollover = 37;
  static const int fieldFrontGearNum = 38;
  static const int fieldFrontGear = 39;
  static const int fieldRearGearNum = 40;
  static const int fieldRearGear = 41;
  static const int fieldShimanoDi2Enabled = 44;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  BikeProfileMesg() : super.from(Profile.getMesg(MesgNum.bikeProfile));
  BikeProfileMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getName() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getSport() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSubSport() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getOdometer() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getBikeSpdAntId() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBikeCadAntId() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBikeSpdcadAntId() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBikePowerAntId() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCustomWheelsize() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAutoWheelsize() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getBikeWeight() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getPowerCalFactor() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  bool? getAutoWheelCal() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getAutoPowerZero() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getId() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getSpdEnabled() {
    var val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getCadEnabled() {
    var val = getFieldValue(
      16,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getSpdcadEnabled() {
    var val = getFieldValue(
      17,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getPowerEnabled() {
    var val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  double? getCrankLength() {
    var val = getFieldValue(
      19,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  bool? getEnabled() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getBikeSpdAntIdTransType() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBikeCadAntIdTransType() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBikeSpdcadAntIdTransType() {
    var val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBikePowerAntIdTransType() {
    var val = getFieldValue(
      24,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOdometerRollover() {
    var val = getFieldValue(
      37,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFrontGearNum() {
    var val = getFieldValue(
      38,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFrontGear() {
    var val = getFieldValue(
      39,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRearGearNum() {
    var val = getFieldValue(
      40,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRearGear() {
    var val = getFieldValue(
      41,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getShimanoDi2Enabled() {
    var val = getFieldValue(
      44,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }
}
