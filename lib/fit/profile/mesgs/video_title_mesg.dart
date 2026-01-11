import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class VideoTitleMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldMessageCount = 0;
  static const int fieldText = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  VideoTitleMesg() : super.from(Profile.getMesg(MesgNum.videoTitle));
  VideoTitleMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMessageCount() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getText() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
