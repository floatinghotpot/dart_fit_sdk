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

  int? getDeviceIndex() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeviceType() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getBleDeviceType() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: DeviceInfoDeviceTypeSubfield.BleDeviceType,
    );
    return val as int?;
  }

  int? getAntplusDeviceType() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: DeviceInfoDeviceTypeSubfield.AntplusDeviceType,
    );
    return val as int?;
  }

  int? getAntDeviceType() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: DeviceInfoDeviceTypeSubfield.AntDeviceType,
    );
    return val as int?;
  }

  int? getLocalDeviceType() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: DeviceInfoDeviceTypeSubfield.LocalDeviceType,
    );
    return val as int?;
  }

  int? getManufacturer() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSerialNumber() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getProduct() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFaveroProduct() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: DeviceInfoProductSubfield.FaveroProduct,
    );
    return val as int?;
  }

  int? getGarminProduct() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: DeviceInfoProductSubfield.GarminProduct,
    );
    return val as int?;
  }

  double? getSoftwareVersion() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getHardwareVersion() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCumOperatingTime() {
    final val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getBatteryVoltage() {
    final val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getBatteryStatus() {
    final val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSensorPosition() {
    final val = getFieldValue(
      18,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getDescriptor() {
    final val = getFieldValue(
      19,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getAntTransmissionType() {
    final val = getFieldValue(
      20,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAntDeviceNumber() {
    final val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAntNetwork() {
    final val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSourceType() {
    final val = getFieldValue(
      25,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getProductName() {
    final val = getFieldValue(
      27,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getBatteryLevel() {
    final val = getFieldValue(
      32,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
