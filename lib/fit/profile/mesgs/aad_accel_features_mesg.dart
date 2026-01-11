import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class AadAccelFeaturesMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldTime = 0;
  static const int fieldEnergyTotal = 1;
  static const int fieldZeroCrossCnt = 2;
  static const int fieldInstance = 3;
  static const int fieldTimeAboveThreshold = 4;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  AadAccelFeaturesMesg()
    : super.from(Profile.getMesg(MesgNum.aadAccelFeatures));
  AadAccelFeaturesMesg.fromMesg(super.mesg) : super.from();

  DateTime? getTimestamp() {
    var val = getFieldValue(
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

  int? getTime() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEnergyTotal() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getZeroCrossCnt() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getInstance() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getTimeAboveThreshold() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
