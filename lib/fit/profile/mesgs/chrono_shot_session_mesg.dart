import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ChronoShotSessionMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldMinSpeed = 0;
  static const int fieldMaxSpeed = 1;
  static const int fieldAvgSpeed = 2;
  static const int fieldShotCount = 3;
  static const int fieldProjectileType = 4;
  static const int fieldGrainWeight = 5;
  static const int fieldStandardDeviation = 6;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ChronoShotSessionMesg()
    : super.from(Profile.getMesg(MesgNum.chronoShotSession));
  ChronoShotSessionMesg.fromMesg(Mesg mesg) : super.from(mesg);

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

  double? getMinSpeed() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxSpeed() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgSpeed() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getShotCount() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getProjectileType() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getGrainWeight() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getStandardDeviation() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
