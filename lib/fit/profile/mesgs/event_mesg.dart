import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class EventDataSubfield {
  static const int TimerTrigger = 0;
  static const int CoursePointIndex = 1;
  static const int BatteryLevel = 2;
  static const int VirtualPartnerSpeed = 3;
  static const int HrHighAlert = 4;
  static const int HrLowAlert = 5;
  static const int SpeedHighAlert = 6;
  static const int SpeedLowAlert = 7;
  static const int CadHighAlert = 8;
  static const int CadLowAlert = 9;
  static const int PowerHighAlert = 10;
  static const int PowerLowAlert = 11;
  static const int TimeDurationAlert = 12;
  static const int DistanceDurationAlert = 13;
  static const int CalorieDurationAlert = 14;
  static const int FitnessEquipmentState = 15;
  static const int SportPoint = 16;
  static const int GearChangeData = 17;
  static const int RiderPosition = 18;
  static const int CommTimeout = 19;
  static const int DiveAlert = 20;
  static const int AutoActivityDetectDuration = 21;
  static const int RadarThreatAlert = 22;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class EventStartTimestampSubfield {
  static const int AutoActivityDetectStartTimestamp = 0;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class EventMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldEvent = 0;
  static const int fieldEventType = 1;
  static const int fieldData16 = 2;
  static const int fieldData = 3;
  static const int fieldEventGroup = 4;
  static const int fieldScore = 7;
  static const int fieldOpponentScore = 8;
  static const int fieldFrontGearNum = 9;
  static const int fieldFrontGear = 10;
  static const int fieldRearGearNum = 11;
  static const int fieldRearGear = 12;
  static const int fieldDeviceIndex = 13;
  static const int fieldActivityType = 14;
  static const int fieldStartTimestamp = 15;
  static const int fieldRadarThreatLevelMax = 21;
  static const int fieldRadarThreatCount = 22;
  static const int fieldRadarThreatAvgApproachSpeed = 23;
  static const int fieldRadarThreatMaxApproachSpeed = 24;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  EventMesg() : super.from(Profile.getMesg(MesgNum.event));
  EventMesg.fromMesg(super.mesg) : super.from();

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

  int? getEvent() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEventType() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getData16() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getData() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTimerTrigger() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.TimerTrigger,
    );
    return val as int?;
  }

  int? getCoursePointIndex() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.CoursePointIndex,
    );
    return val as int?;
  }

  double? getBatteryLevel() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.BatteryLevel,
    );
    return (val as num?)?.toDouble();
  }

  double? getVirtualPartnerSpeed() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.VirtualPartnerSpeed,
    );
    return (val as num?)?.toDouble();
  }

  int? getHrHighAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.HrHighAlert,
    );
    return val as int?;
  }

  int? getHrLowAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.HrLowAlert,
    );
    return val as int?;
  }

  double? getSpeedHighAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.SpeedHighAlert,
    );
    return (val as num?)?.toDouble();
  }

  double? getSpeedLowAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.SpeedLowAlert,
    );
    return (val as num?)?.toDouble();
  }

  int? getCadHighAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.CadHighAlert,
    );
    return val as int?;
  }

  int? getCadLowAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.CadLowAlert,
    );
    return val as int?;
  }

  int? getPowerHighAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.PowerHighAlert,
    );
    return val as int?;
  }

  int? getPowerLowAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.PowerLowAlert,
    );
    return val as int?;
  }

  double? getTimeDurationAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.TimeDurationAlert,
    );
    return (val as num?)?.toDouble();
  }

  double? getDistanceDurationAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.DistanceDurationAlert,
    );
    return (val as num?)?.toDouble();
  }

  int? getCalorieDurationAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.CalorieDurationAlert,
    );
    return val as int?;
  }

  int? getFitnessEquipmentState() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.FitnessEquipmentState,
    );
    return val as int?;
  }

  double? getSportPoint() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.SportPoint,
    );
    return (val as num?)?.toDouble();
  }

  double? getGearChangeData() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.GearChangeData,
    );
    return (val as num?)?.toDouble();
  }

  int? getRiderPosition() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.RiderPosition,
    );
    return val as int?;
  }

  int? getCommTimeout() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.CommTimeout,
    );
    return val as int?;
  }

  int? getDiveAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.DiveAlert,
    );
    return val as int?;
  }

  int? getAutoActivityDetectDuration() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.AutoActivityDetectDuration,
    );
    return val as int?;
  }

  double? getRadarThreatAlert() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: EventDataSubfield.RadarThreatAlert,
    );
    return (val as num?)?.toDouble();
  }

  int? getEventGroup() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getScore() {
    final val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOpponentScore() {
    final val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFrontGearNum() {
    final val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFrontGear() {
    final val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRearGearNum() {
    final val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRearGear() {
    final val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeviceIndex() {
    final val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getActivityType() {
    final val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  DateTime? getStartTimestamp() {
    final val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getAutoActivityDetectStartTimestamp() {
    final val = getFieldValue(
      15,
      index: 0,
      subfieldInfo:
          EventStartTimestampSubfield.AutoActivityDetectStartTimestamp,
    );
    return val as int?;
  }

  int? getRadarThreatLevelMax() {
    final val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRadarThreatCount() {
    final val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getRadarThreatAvgApproachSpeed() {
    final val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getRadarThreatMaxApproachSpeed() {
    final val = getFieldValue(
      24,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
