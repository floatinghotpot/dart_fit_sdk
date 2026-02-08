import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SlaveDeviceProductSubfield {
  static const int FaveroProduct = 0;
  static const int GarminProduct = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class SlaveDeviceMesg extends Mesg {
  static const int fieldManufacturer = 0;
  static const int fieldProduct = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SlaveDeviceMesg() : super.from(Profile.getMesg(MesgNum.slaveDevice));
  SlaveDeviceMesg.fromMesg(super.mesg) : super.from();

  int? getManufacturer() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getProduct() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFaveroProduct() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: SlaveDeviceProductSubfield.FaveroProduct,
    );
    return val as int?;
  }

  int? getGarminProduct() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: SlaveDeviceProductSubfield.GarminProduct,
    );
    return val as int?;
  }
}
