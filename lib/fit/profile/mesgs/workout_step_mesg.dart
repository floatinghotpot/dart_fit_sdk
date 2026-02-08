import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class WorkoutStepDurationValueSubfield {
  static const int DurationTime = 0;
  static const int DurationDistance = 1;
  static const int DurationHr = 2;
  static const int DurationCalories = 3;
  static const int DurationStep = 4;
  static const int DurationPower = 5;
  static const int DurationReps = 6;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class WorkoutStepTargetValueSubfield {
  static const int TargetSpeedZone = 0;
  static const int TargetHrZone = 1;
  static const int TargetCadenceZone = 2;
  static const int TargetPowerZone = 3;
  static const int RepeatSteps = 4;
  static const int RepeatTime = 5;
  static const int RepeatDistance = 6;
  static const int RepeatCalories = 7;
  static const int RepeatHr = 8;
  static const int RepeatPower = 9;
  static const int TargetStrokeType = 10;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class WorkoutStepCustomTargetValueLowSubfield {
  static const int CustomTargetSpeedLow = 0;
  static const int CustomTargetHeartRateLow = 1;
  static const int CustomTargetCadenceLow = 2;
  static const int CustomTargetPowerLow = 3;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class WorkoutStepCustomTargetValueHighSubfield {
  static const int CustomTargetSpeedHigh = 0;
  static const int CustomTargetHeartRateHigh = 1;
  static const int CustomTargetCadenceHigh = 2;
  static const int CustomTargetPowerHigh = 3;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class WorkoutStepSecondaryTargetValueSubfield {
  static const int SecondaryTargetSpeedZone = 0;
  static const int SecondaryTargetHrZone = 1;
  static const int SecondaryTargetCadenceZone = 2;
  static const int SecondaryTargetPowerZone = 3;
  static const int SecondaryTargetStrokeType = 4;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class WorkoutStepSecondaryCustomTargetValueLowSubfield {
  static const int SecondaryCustomTargetSpeedLow = 0;
  static const int SecondaryCustomTargetHeartRateLow = 1;
  static const int SecondaryCustomTargetCadenceLow = 2;
  static const int SecondaryCustomTargetPowerLow = 3;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class WorkoutStepSecondaryCustomTargetValueHighSubfield {
  static const int SecondaryCustomTargetSpeedHigh = 0;
  static const int SecondaryCustomTargetHeartRateHigh = 1;
  static const int SecondaryCustomTargetCadenceHigh = 2;
  static const int SecondaryCustomTargetPowerHigh = 3;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class WorkoutStepMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldWktStepName = 0;
  static const int fieldDurationType = 1;
  static const int fieldDurationValue = 2;
  static const int fieldTargetType = 3;
  static const int fieldTargetValue = 4;
  static const int fieldCustomTargetValueLow = 5;
  static const int fieldCustomTargetValueHigh = 6;
  static const int fieldIntensity = 7;
  static const int fieldNotes = 8;
  static const int fieldEquipment = 9;
  static const int fieldExerciseCategory = 10;
  static const int fieldExerciseName = 11;
  static const int fieldExerciseWeight = 12;
  static const int fieldWeightDisplayUnit = 13;
  static const int fieldSecondaryTargetType = 19;
  static const int fieldSecondaryTargetValue = 20;
  static const int fieldSecondaryCustomTargetValueLow = 21;
  static const int fieldSecondaryCustomTargetValueHigh = 22;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  WorkoutStepMesg() : super.from(Profile.getMesg(MesgNum.workoutStep));
  WorkoutStepMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    final val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getWktStepName() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getDurationType() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDurationValue() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getDurationTime() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationTime,
    );
    return (val as num?)?.toDouble();
  }

  double? getDurationDistance() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationDistance,
    );
    return (val as num?)?.toDouble();
  }

  int? getDurationHr() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationHr,
    );
    return val as int?;
  }

  int? getDurationCalories() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationCalories,
    );
    return val as int?;
  }

  int? getDurationStep() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationStep,
    );
    return val as int?;
  }

  int? getDurationPower() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationPower,
    );
    return val as int?;
  }

  int? getDurationReps() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationReps,
    );
    return val as int?;
  }

  int? getTargetType() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTargetValue() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTargetSpeedZone() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetSpeedZone,
    );
    return val as int?;
  }

  int? getTargetHrZone() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetHrZone,
    );
    return val as int?;
  }

  int? getTargetCadenceZone() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetCadenceZone,
    );
    return val as int?;
  }

  int? getTargetPowerZone() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetPowerZone,
    );
    return val as int?;
  }

  int? getRepeatSteps() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatSteps,
    );
    return val as int?;
  }

  double? getRepeatTime() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatTime,
    );
    return (val as num?)?.toDouble();
  }

  double? getRepeatDistance() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatDistance,
    );
    return (val as num?)?.toDouble();
  }

  int? getRepeatCalories() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatCalories,
    );
    return val as int?;
  }

  int? getRepeatHr() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatHr,
    );
    return val as int?;
  }

  int? getRepeatPower() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatPower,
    );
    return val as int?;
  }

  int? getTargetStrokeType() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetStrokeType,
    );
    return val as int?;
  }

  int? getCustomTargetValueLow() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCustomTargetSpeedLow() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueLowSubfield.CustomTargetSpeedLow,
    );
    return (val as num?)?.toDouble();
  }

  int? getCustomTargetHeartRateLow() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueLowSubfield.CustomTargetHeartRateLow,
    );
    return val as int?;
  }

  int? getCustomTargetCadenceLow() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueLowSubfield.CustomTargetCadenceLow,
    );
    return val as int?;
  }

  int? getCustomTargetPowerLow() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueLowSubfield.CustomTargetPowerLow,
    );
    return val as int?;
  }

  int? getCustomTargetValueHigh() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCustomTargetSpeedHigh() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueHighSubfield.CustomTargetSpeedHigh,
    );
    return (val as num?)?.toDouble();
  }

  int? getCustomTargetHeartRateHigh() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueHighSubfield.CustomTargetHeartRateHigh,
    );
    return val as int?;
  }

  int? getCustomTargetCadenceHigh() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueHighSubfield.CustomTargetCadenceHigh,
    );
    return val as int?;
  }

  int? getCustomTargetPowerHigh() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueHighSubfield.CustomTargetPowerHigh,
    );
    return val as int?;
  }

  int? getIntensity() {
    final val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getNotes() {
    final val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getEquipment() {
    final val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getExerciseCategory() {
    final val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getExerciseName() {
    final val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getExerciseWeight() {
    final val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getWeightDisplayUnit() {
    final val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSecondaryTargetType() {
    final val = getFieldValue(
      19,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSecondaryTargetValue() {
    final val = getFieldValue(
      20,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSecondaryTargetSpeedZone() {
    final val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetSpeedZone,
    );
    return val as int?;
  }

  int? getSecondaryTargetHrZone() {
    final val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetHrZone,
    );
    return val as int?;
  }

  int? getSecondaryTargetCadenceZone() {
    final val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetCadenceZone,
    );
    return val as int?;
  }

  int? getSecondaryTargetPowerZone() {
    final val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetPowerZone,
    );
    return val as int?;
  }

  int? getSecondaryTargetStrokeType() {
    final val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetStrokeType,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetValueLow() {
    final val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getSecondaryCustomTargetSpeedLow() {
    final val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueLowSubfield
          .SecondaryCustomTargetSpeedLow,
    );
    return (val as num?)?.toDouble();
  }

  int? getSecondaryCustomTargetHeartRateLow() {
    final val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueLowSubfield
          .SecondaryCustomTargetHeartRateLow,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetCadenceLow() {
    final val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueLowSubfield
          .SecondaryCustomTargetCadenceLow,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetPowerLow() {
    final val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueLowSubfield
          .SecondaryCustomTargetPowerLow,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetValueHigh() {
    final val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getSecondaryCustomTargetSpeedHigh() {
    final val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueHighSubfield
          .SecondaryCustomTargetSpeedHigh,
    );
    return (val as num?)?.toDouble();
  }

  int? getSecondaryCustomTargetHeartRateHigh() {
    final val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueHighSubfield
          .SecondaryCustomTargetHeartRateHigh,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetCadenceHigh() {
    final val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueHighSubfield
          .SecondaryCustomTargetCadenceHigh,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetPowerHigh() {
    final val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueHighSubfield
          .SecondaryCustomTargetPowerHigh,
    );
    return val as int?;
  }
}
