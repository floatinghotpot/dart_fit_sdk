import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SetMesg extends Mesg {
  static const int fieldTimestamp = 254;
  static const int fieldDuration = 0;
  static const int fieldRepetitions = 3;
  static const int fieldWeight = 4;
  static const int fieldSetType = 5;
  static const int fieldStartTime = 6;
  static const int fieldCategory = 7;
  static const int fieldCategorySubtype = 8;
  static const int fieldWeightDisplayUnit = 9;
  static const int fieldMessageIndex = 10;
  static const int fieldWktStepIndex = 11;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SetMesg() : super.from(Profile.getMesg(MesgNum.set_));
  SetMesg.fromMesg(super.mesg) : super.from();

  DateTime? getTimestamp() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  double? getDuration() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getRepetitions() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getWeight() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getSetType() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  DateTime? getStartTime() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getCategory() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCategorySubtype() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getWeightDisplayUnit() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMessageIndex() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getWktStepIndex() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
