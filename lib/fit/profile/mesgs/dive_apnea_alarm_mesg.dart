import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class DiveApneaAlarmMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldDepth = 0;
  static const int fieldTime = 1;
  static const int fieldEnabled = 2;
  static const int fieldAlarmType = 3;
  static const int fieldSound = 4;
  static const int fieldDiveTypes = 5;
  static const int fieldId = 6;
  static const int fieldPopupEnabled = 7;
  static const int fieldTriggerOnDescent = 8;
  static const int fieldTriggerOnAscent = 9;
  static const int fieldRepeating = 10;
  static const int fieldSpeed = 11;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  DiveApneaAlarmMesg() : super.from(Profile.getMesg(MesgNum.diveApneaAlarm));
  DiveApneaAlarmMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getDepth() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getTime() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getEnabled() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getAlarmType() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSound() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDiveTypes() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getId() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getPopupEnabled() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getTriggerOnDescent() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getTriggerOnAscent() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getRepeating() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  double? getSpeed() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
