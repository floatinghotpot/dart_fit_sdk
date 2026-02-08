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
  SleepAssessmentMesg.fromMesg(super.mesg) : super.from();

  int? getCombinedAwakeScore() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAwakeTimeScore() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAwakeningsCountScore() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDeepSleepScore() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepDurationScore() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLightSleepScore() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOverallSleepScore() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepQualityScore() {
    final val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepRecoveryScore() {
    final val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getRemSleepScore() {
    final val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSleepRestlessnessScore() {
    final val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAwakeningsCount() {
    final val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getInterruptionsScore() {
    final val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getAverageStressDuringSleep() {
    final val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }
}
