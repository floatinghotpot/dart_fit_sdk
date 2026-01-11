import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class DeviceInfoDeviceTypeSubfield {
  static const int BleDeviceType = 0;
  static const int AntplusDeviceType = 1;
  static const int AntDeviceType = 2;
  static const int LocalDeviceType = 3;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class DeviceInfoProductSubfield {
  static const int FaveroProduct = 0;
  static const int GarminProduct = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class DeviceInfoMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldDeviceIndex = 0;
  static const int fieldDeviceType = 1;
  static const int fieldManufacturer = 2;
  static const int fieldSerialNumber = 3;
  static const int fieldProduct = 4;
  static const int fieldSoftwareVersion = 5;
  static const int fieldHardwareVersion = 6;
  static const int fieldCumOperatingTime = 7;
  static const int fieldBatteryVoltage = 10;
  static const int fieldBatteryStatus = 11;
  static const int fieldSensorPosition = 18;
  static const int fieldDescriptor = 19;
  static const int fieldAntTransmissionType = 20;
  static const int fieldAntDeviceNumber = 21;
  static const int fieldAntNetwork = 22;
  static const int fieldSourceType = 25;
  static const int fieldProductName = 27;
  static const int fieldBatteryLevel = 32;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  DeviceInfoMesg() : super.from(Profile.getMesg(MesgNum.deviceInfo));
  DeviceInfoMesg.fromMesg(super.mesg) : super.from();

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

  int? getDeviceType() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBleDeviceType() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: DeviceInfoDeviceTypeSubfield.BleDeviceType,
    );
    return val as int?;
  }

  int? getAntplusDeviceType() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: DeviceInfoDeviceTypeSubfield.AntplusDeviceType,
    );
    return val as int?;
  }

  int? getAntDeviceType() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: DeviceInfoDeviceTypeSubfield.AntDeviceType,
    );
    return val as int?;
  }

  int? getLocalDeviceType() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: DeviceInfoDeviceTypeSubfield.LocalDeviceType,
    );
    return val as int?;
  }

  int? getManufacturer() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSerialNumber() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getProduct() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFaveroProduct() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: DeviceInfoProductSubfield.FaveroProduct,
    );
    return val as int?;
  }

  int? getGarminProduct() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: DeviceInfoProductSubfield.GarminProduct,
    );
    return val as int?;
  }

  double? getSoftwareVersion() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getHardwareVersion() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCumOperatingTime() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getBatteryVoltage() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getBatteryStatus() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSensorPosition() {
    var val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getDescriptor() {
    var val = getFieldValue(
      19,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getAntTransmissionType() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAntDeviceNumber() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAntNetwork() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSourceType() {
    var val = getFieldValue(
      25,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getProductName() {
    var val = getFieldValue(
      27,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getBatteryLevel() {
    var val = getFieldValue(
      32,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
