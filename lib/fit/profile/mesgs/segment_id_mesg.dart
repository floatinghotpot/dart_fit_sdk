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
  SegmentIdMesg.fromMesg(super.mesg) : super.from();

  String? getName() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  String? getUuid() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getSport() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getEnabled() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getUserProfilePrimaryKey() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeviceId() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDefaultRaceLeader() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeleteStatus() {
    final val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSelectionType() {
    final val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
