import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class TrainingFileProductSubfield {
  static const int FaveroProduct = 0;
  static const int GarminProduct = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class TrainingFileMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldType = 0;
  static const int fieldManufacturer = 1;
  static const int fieldProduct = 2;
  static const int fieldSerialNumber = 3;
  static const int fieldTimeCreated = 4;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  TrainingFileMesg() : super.from(Profile.getMesg(MesgNum.trainingFile));
  TrainingFileMesg.fromMesg(super.mesg) : super.from();

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

  int? getType() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getManufacturer() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getProduct() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFaveroProduct() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: TrainingFileProductSubfield.FaveroProduct,
    );
    return val as int?;
  }

  int? getGarminProduct() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: TrainingFileProductSubfield.GarminProduct,
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

  DateTime? getTimeCreated() {
    var val = getFieldValue(
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
}
