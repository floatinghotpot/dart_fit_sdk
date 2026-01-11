import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ExerciseTitleMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldExerciseCategory = 0;
  static const int fieldExerciseName = 1;
  static const int fieldWktStepName = 2;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ExerciseTitleMesg() : super.from(Profile.getMesg(MesgNum.exerciseTitle));
  ExerciseTitleMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getExerciseCategory() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getExerciseName() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getWktStepName() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
