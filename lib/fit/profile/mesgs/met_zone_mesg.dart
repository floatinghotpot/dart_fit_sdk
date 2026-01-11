import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class MetZoneMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldHighBpm = 1;
  static const int fieldCalories = 2;
  static const int fieldFatCalories = 3;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  MetZoneMesg() : super.from(Profile.getMesg(MesgNum.metZone));
  MetZoneMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHighBpm() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCalories() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getFatCalories() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
