import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class DeviceSettingsMesg extends Mesg {
  static const int fieldActiveTimeZone = 0;
  static const int fieldUtcOffset = 1;
  static const int fieldTimeOffset = 2;
  static const int fieldTimeMode = 4;
  static const int fieldTimeZoneOffset = 5;
  static const int fieldBacklightMode = 12;
  static const int fieldActivityTrackerEnabled = 36;
  static const int fieldClockTime = 39;
  static const int fieldPagesEnabled = 40;
  static const int fieldMoveAlertEnabled = 46;
  static const int fieldDateMode = 47;
  static const int fieldDisplayOrientation = 55;
  static const int fieldMountingSide = 56;
  static const int fieldDefaultPage = 57;
  static const int fieldAutosyncMinSteps = 58;
  static const int fieldAutosyncMinTime = 59;
  static const int fieldLactateThresholdAutodetectEnabled = 80;
  static const int fieldBleAutoUploadEnabled = 86;
  static const int fieldAutoSyncFrequency = 89;
  static const int fieldAutoActivityDetect = 90;
  static const int fieldNumberOfScreens = 94;
  static const int fieldSmartNotificationDisplayOrientation = 95;
  static const int fieldTapInterface = 134;
  static const int fieldTapSensitivity = 174;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  DeviceSettingsMesg() : super.from(Profile.getMesg(MesgNum.deviceSettings));
  DeviceSettingsMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getActiveTimeZone() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getUtcOffset() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTimeOffset() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTimeMode() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTimeZoneOffset() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getBacklightMode() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getActivityTrackerEnabled() {
    var val = getFieldValue(
      36,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  DateTime? getClockTime() {
    var val = getFieldValue(
      39,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getPagesEnabled() {
    var val = getFieldValue(
      40,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getMoveAlertEnabled() {
    var val = getFieldValue(
      46,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getDateMode() {
    var val = getFieldValue(
      47,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDisplayOrientation() {
    var val = getFieldValue(
      55,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMountingSide() {
    var val = getFieldValue(
      56,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDefaultPage() {
    var val = getFieldValue(
      57,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAutosyncMinSteps() {
    var val = getFieldValue(
      58,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAutosyncMinTime() {
    var val = getFieldValue(
      59,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getLactateThresholdAutodetectEnabled() {
    var val = getFieldValue(
      80,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getBleAutoUploadEnabled() {
    var val = getFieldValue(
      86,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getAutoSyncFrequency() {
    var val = getFieldValue(
      89,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAutoActivityDetect() {
    var val = getFieldValue(
      90,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNumberOfScreens() {
    var val = getFieldValue(
      94,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSmartNotificationDisplayOrientation() {
    var val = getFieldValue(
      95,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTapInterface() {
    var val = getFieldValue(
      134,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTapSensitivity() {
    var val = getFieldValue(
      174,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
