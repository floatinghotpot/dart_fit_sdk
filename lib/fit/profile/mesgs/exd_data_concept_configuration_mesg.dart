import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ExdDataConceptConfigurationMesg extends Mesg {
  static const int fieldScreenIndex = 0;
  static const int fieldConceptField = 1;
  static const int fieldFieldId = 2;
  static const int fieldConceptIndex = 3;
  static const int fieldDataPage = 4;
  static const int fieldConceptKey = 5;
  static const int fieldScaling = 6;
  static const int fieldDataUnits = 8;
  static const int fieldQualifier = 9;
  static const int fieldDescriptor = 10;
  static const int fieldIsSigned = 11;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ExdDataConceptConfigurationMesg()
    : super.from(Profile.getMesg(MesgNum.exdDataConceptConfiguration));
  ExdDataConceptConfigurationMesg.fromMesg(Mesg mesg) : super.from(mesg);

  int? getScreenIndex() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getConceptField() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFieldId() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getConceptIndex() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDataPage() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getConceptKey() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getScaling() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDataUnits() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getQualifier() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDescriptor() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  bool? getIsSigned() {
    var val = getFieldValue(
      11,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as bool?;
  }
}
