import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class MonitoringHrDataMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldRestingHeartRate = 0;
  static const int fieldCurrentDayRestingHeartRate = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  MonitoringHrDataMesg()
    : super.from(Profile.getMesg(MesgNum.monitoringHrData));
  MonitoringHrDataMesg.fromMesg(Mesg mesg) : super.from(mesg);

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

  int? getRestingHeartRate() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCurrentDayRestingHeartRate() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
