import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class DeviceAuxBatteryInfoMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldDeviceIndex = 0;
  static const int fieldBatteryVoltage = 1;
  static const int fieldBatteryStatus = 2;
  static const int fieldBatteryIdentifier = 3;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  DeviceAuxBatteryInfoMesg()
    : super.from(Profile.getMesg(MesgNum.deviceAuxBatteryInfo));
  DeviceAuxBatteryInfoMesg.fromMesg(Mesg mesg) : super.from(mesg);

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

  int? getDeviceIndex() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getBatteryVoltage() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getBatteryStatus() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBatteryIdentifier() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
