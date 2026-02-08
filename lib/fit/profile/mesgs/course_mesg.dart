import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class CourseMesg extends Mesg {
  static const int fieldSport = 4;
  static const int fieldName = 5;
  static const int fieldCapabilities = 6;
  static const int fieldSubSport = 7;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  CourseMesg() : super.from(Profile.getMesg(MesgNum.course));
  CourseMesg.fromMesg(super.mesg) : super.from();

  int? getSport() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getName() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  int? getCapabilities() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSubSport() {
    final val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
