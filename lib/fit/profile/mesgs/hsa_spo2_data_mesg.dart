import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class HsaSpo2DataMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldProcessingInterval = 0;
  static const int fieldReadingSpo2 = 1;
  static const int fieldConfidence = 2;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  HsaSpo2DataMesg() : super.from(Profile.getMesg(MesgNum.hsaSpo2Data));
  HsaSpo2DataMesg.fromMesg(super.mesg) : super.from();

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

  int? getProcessingInterval() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getReadingSpo2() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getConfidence() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
