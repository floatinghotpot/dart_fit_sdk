import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class SleepAssessmentMesg extends Mesg {
  static const int fieldCombinedAwakeScore = 0;
  static const int fieldAwakeTimeScore = 1;
  static const int fieldAwakeningsCountScore = 2;
  static const int fieldDeepSleepScore = 3;
  static const int fieldSleepDurationScore = 4;
  static const int fieldLightSleepScore = 5;
  static const int fieldOverallSleepScore = 6;
  static const int fieldSleepQualityScore = 7;
  static const int fieldSleepRecoveryScore = 8;
  static const int fieldRemSleepScore = 9;
  static const int fieldSleepRestlessnessScore = 10;
  static const int fieldAwakeningsCount = 11;
  static const int fieldInterruptionsScore = 14;
  static const int fieldAverageStressDuringSleep = 15;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  SleepAssessmentMesg() : super.from(Profile.getMesg(MesgNum.sleepAssessment));
  SleepAssessmentMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getCombinedAwakeScore() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAwakeTimeScore() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAwakeningsCountScore() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeepSleepScore() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepDurationScore() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLightSleepScore() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOverallSleepScore() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepQualityScore() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepRecoveryScore() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRemSleepScore() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepRestlessnessScore() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAwakeningsCount() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getInterruptionsScore() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAverageStressDuringSleep() {
    var val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
