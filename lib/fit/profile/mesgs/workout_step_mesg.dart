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
  WorkoutStepMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getWktStepName() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getDurationType() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDurationValue() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getDurationTime() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationTime,
    );
    return (val as num?)?.toDouble();
  }

  double? getDurationDistance() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationDistance,
    );
    return (val as num?)?.toDouble();
  }

  int? getDurationHr() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationHr,
    );
    return val as int?;
  }

  int? getDurationCalories() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationCalories,
    );
    return val as int?;
  }

  int? getDurationStep() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationStep,
    );
    return val as int?;
  }

  int? getDurationPower() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationPower,
    );
    return val as int?;
  }

  int? getDurationReps() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: WorkoutStepDurationValueSubfield.DurationReps,
    );
    return val as int?;
  }

  int? getTargetType() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTargetValue() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getTargetSpeedZone() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetSpeedZone,
    );
    return val as int?;
  }

  int? getTargetHrZone() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetHrZone,
    );
    return val as int?;
  }

  int? getTargetCadenceZone() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetCadenceZone,
    );
    return val as int?;
  }

  int? getTargetPowerZone() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetPowerZone,
    );
    return val as int?;
  }

  int? getRepeatSteps() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatSteps,
    );
    return val as int?;
  }

  double? getRepeatTime() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatTime,
    );
    return (val as num?)?.toDouble();
  }

  double? getRepeatDistance() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatDistance,
    );
    return (val as num?)?.toDouble();
  }

  int? getRepeatCalories() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatCalories,
    );
    return val as int?;
  }

  int? getRepeatHr() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatHr,
    );
    return val as int?;
  }

  int? getRepeatPower() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.RepeatPower,
    );
    return val as int?;
  }

  int? getTargetStrokeType() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: WorkoutStepTargetValueSubfield.TargetStrokeType,
    );
    return val as int?;
  }

  int? getCustomTargetValueLow() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCustomTargetSpeedLow() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueLowSubfield.CustomTargetSpeedLow,
    );
    return (val as num?)?.toDouble();
  }

  int? getCustomTargetHeartRateLow() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueLowSubfield.CustomTargetHeartRateLow,
    );
    return val as int?;
  }

  int? getCustomTargetCadenceLow() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueLowSubfield.CustomTargetCadenceLow,
    );
    return val as int?;
  }

  int? getCustomTargetPowerLow() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueLowSubfield.CustomTargetPowerLow,
    );
    return val as int?;
  }

  int? getCustomTargetValueHigh() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCustomTargetSpeedHigh() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueHighSubfield.CustomTargetSpeedHigh,
    );
    return (val as num?)?.toDouble();
  }

  int? getCustomTargetHeartRateHigh() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueHighSubfield.CustomTargetHeartRateHigh,
    );
    return val as int?;
  }

  int? getCustomTargetCadenceHigh() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueHighSubfield.CustomTargetCadenceHigh,
    );
    return val as int?;
  }

  int? getCustomTargetPowerHigh() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo:
          WorkoutStepCustomTargetValueHighSubfield.CustomTargetPowerHigh,
    );
    return val as int?;
  }

  int? getIntensity() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getNotes() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getEquipment() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getExerciseCategory() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getExerciseName() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getExerciseWeight() {
    var val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getWeightDisplayUnit() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSecondaryTargetType() {
    var val = getFieldValue(
      19,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSecondaryTargetValue() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSecondaryTargetSpeedZone() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetSpeedZone,
    );
    return val as int?;
  }

  int? getSecondaryTargetHrZone() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetHrZone,
    );
    return val as int?;
  }

  int? getSecondaryTargetCadenceZone() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetCadenceZone,
    );
    return val as int?;
  }

  int? getSecondaryTargetPowerZone() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetPowerZone,
    );
    return val as int?;
  }

  int? getSecondaryTargetStrokeType() {
    var val = getFieldValue(
      20,
      index: 0,
      subfieldInfo:
          WorkoutStepSecondaryTargetValueSubfield.SecondaryTargetStrokeType,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetValueLow() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getSecondaryCustomTargetSpeedLow() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueLowSubfield
          .SecondaryCustomTargetSpeedLow,
    );
    return (val as num?)?.toDouble();
  }

  int? getSecondaryCustomTargetHeartRateLow() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueLowSubfield
          .SecondaryCustomTargetHeartRateLow,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetCadenceLow() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueLowSubfield
          .SecondaryCustomTargetCadenceLow,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetPowerLow() {
    var val = getFieldValue(
      21,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueLowSubfield
          .SecondaryCustomTargetPowerLow,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetValueHigh() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getSecondaryCustomTargetSpeedHigh() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueHighSubfield
          .SecondaryCustomTargetSpeedHigh,
    );
    return (val as num?)?.toDouble();
  }

  int? getSecondaryCustomTargetHeartRateHigh() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueHighSubfield
          .SecondaryCustomTargetHeartRateHigh,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetCadenceHigh() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueHighSubfield
          .SecondaryCustomTargetCadenceHigh,
    );
    return val as int?;
  }

  int? getSecondaryCustomTargetPowerHigh() {
    var val = getFieldValue(
      22,
      index: 0,
      subfieldInfo: WorkoutStepSecondaryCustomTargetValueHighSubfield
          .SecondaryCustomTargetPowerHigh,
    );
    return val as int?;
  }
}
