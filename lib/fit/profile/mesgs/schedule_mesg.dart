import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ScheduleProductSubfield {
  static const int FaveroProduct = 0;
  static const int GarminProduct = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class ScheduleMesg extends Mesg {
  static const int fieldManufacturer = 0;
  static const int fieldProduct = 1;
  static const int fieldSerialNumber = 2;
  static const int fieldTimeCreated = 3;
  static const int fieldCompleted = 4;
  static const int fieldType = 5;
  static const int fieldScheduledTime = 6;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ScheduleMesg() : super.from(Profile.getMesg(MesgNum.schedule));
  ScheduleMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getManufacturer() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getProduct() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFaveroProduct() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: ScheduleProductSubfield.FaveroProduct,
    );
    return val as int?;
  }

  int? getGarminProduct() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: ScheduleProductSubfield.GarminProduct,
    );
    return val as int?;
  }

  int? getSerialNumber() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  DateTime? getTimeCreated() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  bool? getCompleted() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getType() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getScheduledTime() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
