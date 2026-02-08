import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ConnectivityMesg extends Mesg {
  static const int fieldBluetoothEnabled = 0;
  static const int fieldBluetoothLeEnabled = 1;
  static const int fieldAntEnabled = 2;
  static const int fieldName = 3;
  static const int fieldLiveTrackingEnabled = 4;
  static const int fieldWeatherConditionsEnabled = 5;
  static const int fieldWeatherAlertsEnabled = 6;
  static const int fieldAutoActivityUploadEnabled = 7;
  static const int fieldCourseDownloadEnabled = 8;
  static const int fieldWorkoutDownloadEnabled = 9;
  static const int fieldGpsEphemerisDownloadEnabled = 10;
  static const int fieldIncidentDetectionEnabled = 11;
  static const int fieldGrouptrackEnabled = 12;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ConnectivityMesg() : super.from(Profile.getMesg(MesgNum.connectivity));
  ConnectivityMesg.fromMesg(super.mesg) : super.from();

  bool? getBluetoothEnabled() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getBluetoothLeEnabled() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getAntEnabled() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  String? getName() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }

  bool? getLiveTrackingEnabled() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getWeatherConditionsEnabled() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getWeatherAlertsEnabled() {
    final val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getAutoActivityUploadEnabled() {
    final val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getCourseDownloadEnabled() {
    final val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getWorkoutDownloadEnabled() {
    final val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getGpsEphemerisDownloadEnabled() {
    final val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getIncidentDetectionEnabled() {
    final val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }

  bool? getGrouptrackEnabled() {
    final val = getFieldValue(
      12,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }
}
