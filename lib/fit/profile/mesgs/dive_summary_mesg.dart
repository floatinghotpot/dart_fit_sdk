import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class DiveSummaryMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldReferenceMesg = 0;
  static const int fieldReferenceIndex = 1;
  static const int fieldAvgDepth = 2;
  static const int fieldMaxDepth = 3;
  static const int fieldSurfaceInterval = 4;
  static const int fieldStartCns = 5;
  static const int fieldEndCns = 6;
  static const int fieldStartN2 = 7;
  static const int fieldEndN2 = 8;
  static const int fieldO2Toxicity = 9;
  static const int fieldDiveNumber = 10;
  static const int fieldBottomTime = 11;
  static const int fieldAvgPressureSac = 12;
  static const int fieldAvgVolumeSac = 13;
  static const int fieldAvgRmv = 14;
  static const int fieldDescentTime = 15;
  static const int fieldAscentTime = 16;
  static const int fieldAvgAscentRate = 17;
  static const int fieldAvgDescentRate = 22;
  static const int fieldMaxAscentRate = 23;
  static const int fieldMaxDescentRate = 24;
  static const int fieldHangTime = 25;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  DiveSummaryMesg() : super.from(Profile.getMesg(MesgNum.diveSummary));
  DiveSummaryMesg.fromMesg(super.mesg) : super.from();

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

  int? getReferenceMesg() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getReferenceIndex() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAvgDepth() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxDepth() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getSurfaceInterval() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getStartCns() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEndCns() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getStartN2() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getEndN2() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getO2Toxicity() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDiveNumber() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getBottomTime() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgPressureSac() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgVolumeSac() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgRmv() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getDescentTime() {
    var val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAscentTime() {
    var val = getFieldValue(
      16,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgAscentRate() {
    var val = getFieldValue(
      17,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getAvgDescentRate() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxAscentRate() {
    var val = getFieldValue(
      23,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getMaxDescentRate() {
    var val = getFieldValue(
      24,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getHangTime() {
    var val = getFieldValue(
      25,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
