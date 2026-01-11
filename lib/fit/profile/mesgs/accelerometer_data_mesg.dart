import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class AccelerometerDataMesg extends Mesg {
  static const int fieldTimestamp = 253;
  static const int fieldTimestampMs = 0;
  static const int fieldSampleTimeOffset = 1;
  static const int fieldAccelX = 2;
  static const int fieldAccelY = 3;
  static const int fieldAccelZ = 4;
  static const int fieldCalibratedAccelX = 5;
  static const int fieldCalibratedAccelY = 6;
  static const int fieldCalibratedAccelZ = 7;
  static const int fieldCompressedCalibratedAccelX = 8;
  static const int fieldCompressedCalibratedAccelY = 9;
  static const int fieldCompressedCalibratedAccelZ = 10;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  AccelerometerDataMesg()
    : super.from(Profile.getMesg(MesgNum.accelerometerData));
  AccelerometerDataMesg.fromMesg(super.mesg) : super.from();

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

  int? getTimestampMs() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getSampleTimeOffset() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAccelX() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAccelY() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getAccelZ() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  double? getCalibratedAccelX() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCalibratedAccelY() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  double? getCalibratedAccelZ() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return (val as num?)?.toDouble();
  }

  int? getCompressedCalibratedAccelX() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCompressedCalibratedAccelY() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCompressedCalibratedAccelZ() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
