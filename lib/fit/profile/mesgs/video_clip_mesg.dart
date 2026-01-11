import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class VideoClipMesg extends Mesg {
  static const int fieldClipNumber = 0;
  static const int fieldStartTimestamp = 1;
  static const int fieldStartTimestampMs = 2;
  static const int fieldEndTimestamp = 3;
  static const int fieldEndTimestampMs = 4;
  static const int fieldClipStart = 6;
  static const int fieldClipEnd = 7;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  VideoClipMesg() : super.from(Profile.getMesg(MesgNum.videoClip));
  VideoClipMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getClipNumber() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  DateTime? getStartTimestamp() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getStartTimestampMs() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  DateTime? getEndTimestamp() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getEndTimestampMs() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getClipStart() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getClipEnd() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
