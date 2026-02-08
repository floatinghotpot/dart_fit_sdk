import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class MesgCapabilitiesCountSubfield {
  static const int NumPerFile = 0;
  static const int MaxPerFile = 1;
  static const int MaxPerFileType = 2;
  static const int active = Fit.subfieldIndexActiveSubfield;
  static const int mainField = Fit.subfieldIndexMainField;
}

class MesgCapabilitiesMesg extends Mesg {
  static const int fieldMessageIndex = 254;
  static const int fieldFile = 0;
  static const int fieldMesgNum = 1;
  static const int fieldCountType = 2;
  static const int fieldCount = 3;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  MesgCapabilitiesMesg()
    : super.from(Profile.getMesg(MesgNum.mesgCapabilities));
  MesgCapabilitiesMesg.fromMesg(super.mesg) : super.from();

  int? getMessageIndex() {
    final val = getFieldValue(
      254,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFile() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getMesgNum() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCountType() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getCount() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNumPerFile() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: MesgCapabilitiesCountSubfield.NumPerFile,
    );
    return val as int?;
  }

  int? getMaxPerFile() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: MesgCapabilitiesCountSubfield.MaxPerFile,
    );
    return val as int?;
  }

  int? getMaxPerFileType() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: MesgCapabilitiesCountSubfield.MaxPerFileType,
    );
    return val as int?;
  }
}
