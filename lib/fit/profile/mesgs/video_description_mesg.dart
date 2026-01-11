import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class VideoDescriptionMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldMessageCount = 0;
  static const int fieldText = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  VideoDescriptionMesg()
    : super.from(Profile.getMesg(MesgNum.videoDescription));
  VideoDescriptionMesg.fromMesg(Mesg mesg) : super.from(mesg);

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
