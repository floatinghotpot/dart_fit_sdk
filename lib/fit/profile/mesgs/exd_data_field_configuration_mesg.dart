import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class ExdDataFieldConfigurationMesg extends Mesg {
  static const int fieldScreenIndex = 0;
  static const int fieldConceptField = 1;
  static const int fieldFieldId = 2;
  static const int fieldConceptCount = 3;
  static const int fieldDisplayType = 4;
  static const int fieldTitle = 5;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  ExdDataFieldConfigurationMesg()
    : super.from(Profile.getMesg(MesgNum.exdDataFieldConfiguration));
  ExdDataFieldConfigurationMesg.fromMesg(super.mesg) : super.from();

  int? getScreenIndex() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getConceptField() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFieldId() {
    final val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getConceptCount() {
    final val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getDisplayType() {
    final val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getTitle() {
    final val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val?.toString();
  }
}
