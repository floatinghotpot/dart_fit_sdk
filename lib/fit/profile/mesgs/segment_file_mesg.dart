import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SegmentFileMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldFileUuid = 1;
  static const int fieldEnabled = 3;
  static const int fieldUserProfilePrimaryKey = 4;
  static const int fieldLeaderType = 7;
  static const int fieldLeaderGroupPrimaryKey = 8;
  static const int fieldLeaderActivityId = 9;
  static const int fieldLeaderActivityIdString = 10;
  static const int fieldDefaultRaceLeader = 11;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SegmentFileMesg() : super.from(Profile.getMesg(MesgNum.segmentFile));
  SegmentFileMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getFileUuid() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
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

  int? getLeaderType() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLeaderGroupPrimaryKey() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLeaderActivityId() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getLeaderActivityIdString() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getDefaultRaceLeader() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
