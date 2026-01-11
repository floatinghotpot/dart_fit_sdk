import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class AntChannelIdMesg extends Mesg {
  static const int fieldChannelNumber = 0;
  static const int fieldDeviceType = 1;
  static const int fieldDeviceNumber = 2;
  static const int fieldTransmissionType = 3;
  static const int fieldDeviceIndex = 4;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  AntChannelIdMesg() : super.from(Profile.getMesg(MesgNum.antChannelId));
  AntChannelIdMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getChannelNumber() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeviceType() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeviceNumber() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTransmissionType() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeviceIndex() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
