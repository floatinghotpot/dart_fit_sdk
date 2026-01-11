import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class TimeInZoneMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldReferenceMesg = 0;
  static const int fieldReferenceIndex = 1;
  static const int fieldTimeInHrZone = 2;
  static const int fieldTimeInSpeedZone = 3;
  static const int fieldTimeInCadenceZone = 4;
  static const int fieldTimeInPowerZone = 5;
  static const int fieldHrZoneHighBoundary = 6;
  static const int fieldSpeedZoneHighBoundary = 7;
  static const int fieldCadenceZoneHighBondary = 8;
  static const int fieldPowerZoneHighBoundary = 9;
  static const int fieldHrCalcType = 10;
  static const int fieldMaxHeartRate = 11;
  static const int fieldRestingHeartRate = 12;
  static const int fieldThresholdHeartRate = 13;
  static const int fieldPwrCalcType = 14;
  static const int fieldFunctionalThresholdPower = 15;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  TimeInZoneMesg() : super.from(Profile.getMesg(MesgNum.timeInZone));
  TimeInZoneMesg.fromMesg(Mesg mesg) : super.from(mesg);

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

  int? getReferenceMesg() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getReferenceIndex() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTimeInHrZone() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInSpeedZone() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInCadenceZone() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getTimeInPowerZone() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getHrZoneHighBoundary() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getSpeedZoneHighBoundary() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getCadenceZoneHighBondary() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getPowerZoneHighBoundary() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHrCalcType() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxHeartRate() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRestingHeartRate() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getThresholdHeartRate() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getPwrCalcType() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFunctionalThresholdPower() {
    var val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
