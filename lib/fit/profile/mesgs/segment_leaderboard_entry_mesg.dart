import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SegmentLeaderboardEntryMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldName = 0;
  static const int fieldType = 1;
  static const int fieldGroupPrimaryKey = 2;
  static const int fieldActivityId = 3;
  static const int fieldSegmentTime = 4;
  static const int fieldActivityIdString = 5;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SegmentLeaderboardEntryMesg()
    : super.from(Profile.getMesg(MesgNum.segmentLeaderboardEntry));
  SegmentLeaderboardEntryMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    final val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getName() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getType() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getGroupPrimaryKey() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getActivityId() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getSegmentTime() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  String? getActivityIdString() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
