import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class VideoMesg extends Mesg {
  static const int fieldUrl = 0;
  static const int fieldHostingProvider = 1;
  static const int fieldDuration = 2;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  VideoMesg() : super.from(Profile.getMesg(MesgNum.video));
  VideoMesg.fromMesg(super.mesg) : super.from();

  String? getUrl() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  String? getHostingProvider() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getDuration() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
