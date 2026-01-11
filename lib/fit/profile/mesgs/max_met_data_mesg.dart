import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class MaxMetDataMesg extends Mesg {
  static const int fieldUpdateTime = 0;
  static const int fieldVo2Max = 2;
  static const int fieldSport = 5;
  static const int fieldSubSport = 6;
  static const int fieldMaxMetCategory = 8;
  static const int fieldCalibratedData = 9;
  static const int fieldHrSource = 12;
  static const int fieldSpeedSource = 13;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  MaxMetDataMesg() : super.from(Profile.getMesg(MesgNum.maxMetData));
  MaxMetDataMesg.fromMesg(Mesg mesg) : super.from(mesg);

  DateTime? getUpdateTime() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  double? getVo2Max() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getSport() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSubSport() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMaxMetCategory() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getCalibratedData() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  int? getHrSource() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSpeedSource() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
