import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class FileIdProductSubfield {
  static const int FaveroProduct = 0;
  static const int GarminProduct = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class FileIdMesg extends Mesg {
  static const int fieldType = 0;
  static const int fieldManufacturer = 1;
  static const int fieldProduct = 2;
  static const int fieldSerialNumber = 3;
  static const int fieldTimeCreated = 4;
  static const int fieldNumber = 5;
  static const int fieldProductName = 8;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  FileIdMesg() : super.from(Profile.getMesg(MesgNum.fileId));
  FileIdMesg.fromMesg(super.mesg) : super.from();

  int? getType() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getManufacturer() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getProduct() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFaveroProduct() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: FileIdProductSubfield.FaveroProduct,
    );
    return val as int?;
  }

  int? getGarminProduct() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: FileIdProductSubfield.GarminProduct,
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

  DateTime? getTimeCreated() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getNumber() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getProductName() {
    final val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
