import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class CoursePointMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldTimestamp = 1;
  static const int fieldPositionLat = 2;
  static const int fieldPositionLong = 3;
  static const int fieldDistance = 4;
  static const int fieldType = 5;
  static const int fieldName = 6;
  static const int fieldFavorite = 8;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  CoursePointMesg() : super.from(Profile.getMesg(MesgNum.coursePoint));
  CoursePointMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  DateTime? getTimestamp() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val == null
        ? null
        : DateTime.fromMillisecondsSinceEpoch(
            (val as int) * 1000 + 631065600000,
          );
  }

  int? getPositionLat() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getPositionLong() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getDistance() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getType() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getName() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  bool? getFavorite() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }
}
