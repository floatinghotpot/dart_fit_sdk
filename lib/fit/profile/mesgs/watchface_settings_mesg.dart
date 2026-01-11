import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class WatchfaceSettingsLayoutSubfield {
  static const int DigitalLayout = 0;
  static const int AnalogLayout = 1;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class WatchfaceSettingsMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldMode = 0;
  static const int fieldLayout = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  WatchfaceSettingsMesg()
    : super.from(Profile.getMesg(MesgNum.watchfaceSettings));
  WatchfaceSettingsMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getMessageIndex() {
    var val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMode() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getLayout() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDigitalLayout() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: WatchfaceSettingsLayoutSubfield.DigitalLayout,
    );
    return val as int?;
  }

  int? getAnalogLayout() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: WatchfaceSettingsLayoutSubfield.AnalogLayout,
    );
    return val as int?;
  }
}
