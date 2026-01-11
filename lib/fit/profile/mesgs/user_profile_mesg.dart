import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class UserProfileMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldFriendlyName = 0;
  static const int fieldGender = 1;
  static const int fieldAge = 2;
  static const int fieldHeight = 3;
  static const int fieldWeight = 4;
  static const int fieldLanguage = 5;
  static const int fieldElevSetting = 6;
  static const int fieldWeightSetting = 7;
  static const int fieldRestingHeartRate = 8;
  static const int fieldDefaultMaxRunningHeartRate = 9;
  static const int fieldDefaultMaxBikingHeartRate = 10;
  static const int fieldDefaultMaxHeartRate = 11;
  static const int fieldHrSetting = 12;
  static const int fieldSpeedSetting = 13;
  static const int fieldDistSetting = 14;
  static const int fieldPowerSetting = 16;
  static const int fieldActivityClass = 17;
  static const int fieldPositionSetting = 18;
  static const int fieldTemperatureSetting = 21;
  static const int fieldLocalId = 22;
  static const int fieldGlobalId = 23;
  static const int fieldWakeTime = 28;
  static const int fieldSleepTime = 29;
  static const int fieldHeightSetting = 30;
  static const int fieldUserRunningStepLength = 31;
  static const int fieldUserWalkingStepLength = 32;
  static const int fieldDepthSetting = 47;
  static const int fieldDiveCount = 49;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  UserProfileMesg() : super.from(Profile.getMesg(MesgNum.userProfile));
  UserProfileMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getFriendlyName() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getGender() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAge() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getHeight() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getWeight() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getLanguage() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getElevSetting() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getWeightSetting() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRestingHeartRate() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDefaultMaxRunningHeartRate() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDefaultMaxBikingHeartRate() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDefaultMaxHeartRate() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHrSetting() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSpeedSetting() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDistSetting() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getPowerSetting() {
    var val = getFieldValue(
      16,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getActivityClass() {
    var val = getFieldValue(
      17,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getPositionSetting() {
    var val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTemperatureSetting() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLocalId() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getGlobalId() {
    var val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getWakeTime() {
    var val = getFieldValue(
      28,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepTime() {
    var val = getFieldValue(
      29,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHeightSetting() {
    var val = getFieldValue(
      30,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getUserRunningStepLength() {
    var val = getFieldValue(
      31,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getUserWalkingStepLength() {
    var val = getFieldValue(
      32,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getDepthSetting() {
    var val = getFieldValue(
      47,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDiveCount() {
    var val = getFieldValue(
      49,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
