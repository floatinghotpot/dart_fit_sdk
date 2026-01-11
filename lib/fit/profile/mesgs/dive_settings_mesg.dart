import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class DiveSettingsHeartRateSourceSubfield {
  static const int HeartRateAntplusDeviceType = 0;
  static const int HeartRateLocalDeviceType = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class DiveSettingsMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldMessageIndex = 254;
  static const int fieldName = 0;
  static const int fieldModel = 1;
  static const int fieldGfLow = 2;
  static const int fieldGfHigh = 3;
  static const int fieldWaterType = 4;
  static const int fieldWaterDensity = 5;
  static const int fieldPo2Warn = 6;
  static const int fieldPo2Critical = 7;
  static const int fieldPo2Deco = 8;
  static const int fieldSafetyStopEnabled = 9;
  static const int fieldBottomDepth = 10;
  static const int fieldBottomTime = 11;
  static const int fieldApneaCountdownEnabled = 12;
  static const int fieldApneaCountdownTime = 13;
  static const int fieldBacklightMode = 14;
  static const int fieldBacklightBrightness = 15;
  static const int fieldBacklightTimeout = 16;
  static const int fieldRepeatDiveInterval = 17;
  static const int fieldSafetyStopTime = 18;
  static const int fieldHeartRateSourceType = 19;
  static const int fieldHeartRateSource = 20;
  static const int fieldTravelGas = 21;
  static const int fieldCcrLowSetpointSwitchMode = 22;
  static const int fieldCcrLowSetpoint = 23;
  static const int fieldCcrLowSetpointDepth = 24;
  static const int fieldCcrHighSetpointSwitchMode = 25;
  static const int fieldCcrHighSetpoint = 26;
  static const int fieldCcrHighSetpointDepth = 27;
  static const int fieldGasConsumptionDisplay = 29;
  static const int fieldUpKeyEnabled = 30;
  static const int fieldDiveSounds = 35;
  static const int fieldLastStopMultiple = 36;
  static const int fieldNoFlyTimeMode = 37;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  DiveSettingsMesg() : super.from(Profile.getMesg(MesgNum.diveSettings));
  DiveSettingsMesg.fromMesg(super.mesg) : super.from();

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

  int? getModel() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getGfLow() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getGfHigh() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getWaterType() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getWaterDensity() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getPo2Warn() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getPo2Critical() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getPo2Deco() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  bool? getSafetyStopEnabled() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  double? getBottomDepth() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getBottomTime() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getApneaCountdownEnabled() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getApneaCountdownTime() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBacklightMode() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBacklightBrightness() {
    var val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBacklightTimeout() {
    var val = getFieldValue(
      16,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRepeatDiveInterval() {
    var val = getFieldValue(
      17,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSafetyStopTime() {
    var val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHeartRateSourceType() {
    var val = getFieldValue(
      19,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHeartRateSource() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHeartRateAntplusDeviceType() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          DiveSettingsHeartRateSourceSubfield.HeartRateAntplusDeviceType,
    );
    return val as int?;
  }

  int? getHeartRateLocalDeviceType() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          DiveSettingsHeartRateSourceSubfield.HeartRateLocalDeviceType,
    );
    return val as int?;
  }

  int? getTravelGas() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCcrLowSetpointSwitchMode() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCcrLowSetpoint() {
    var val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCcrLowSetpointDepth() {
    var val = getFieldValue(
      24,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getCcrHighSetpointSwitchMode() {
    var val = getFieldValue(
      25,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCcrHighSetpoint() {
    var val = getFieldValue(
      26,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCcrHighSetpointDepth() {
    var val = getFieldValue(
      27,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getGasConsumptionDisplay() {
    var val = getFieldValue(
      29,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getUpKeyEnabled() {
    var val = getFieldValue(
      30,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getDiveSounds() {
    var val = getFieldValue(
      35,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getLastStopMultiple() {
    var val = getFieldValue(
      36,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getNoFlyTimeMode() {
    var val = getFieldValue(
      37,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
