import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SegmentIdMesg extends Mesg {
  static const int fieldName = 0;
  static const int fieldUuid = 1;
  static const int fieldSport = 2;
  static const int fieldEnabled = 3;
  static const int fieldUserProfilePrimaryKey = 4;
  static const int fieldDeviceId = 5;
  static const int fieldDefaultRaceLeader = 6;
  static const int fieldDeleteStatus = 7;
  static const int fieldSelectionType = 8;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SegmentIdMesg() : super.from(Profile.getMesg(MesgNum.segmentId));
  SegmentIdMesg.fromMesg(Mesg mesg) : super.from(mesg);

  String? getName() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  String? getUuid() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getSport() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getEnabled() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getUserProfilePrimaryKey() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeviceId() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDefaultRaceLeader() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeleteStatus() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSelectionType() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
