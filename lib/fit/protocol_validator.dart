import 'mesg.dart';
import 'mesg_definition.dart';
import 'defines.dart';

abstract class Validator {
  bool validateMesg(Mesg mesg);
  bool validateMesgDefinition(MesgDefinition defn);
}

class V1Validator implements Validator {
  @override
  bool validateMesg(Mesg mesg) {
    // V1 doesn't support developer fields or 64-bit types
    for (var fld in mesg.fields) {
      final int typeNum = fld.type & Fit.baseTypeNumMask;
      if (typeNum > Fit.byte) {
        return false;
      }
    }
    return true;
  }

  @override
  bool validateMesgDefinition(MesgDefinition defn) {
    for (var fld in defn.getFields()) {
      final int typeNum = fld.type & Fit.baseTypeNumMask;
      if (typeNum > Fit.byte) {
        return false;
      }
    }
    return true;
  }
}

class ProtocolValidator implements Validator {
  final Validator? _validator;

  ProtocolValidator([ProtocolVersion version = ProtocolVersion.v20])
    : _validator = version == ProtocolVersion.v10 ? V1Validator() : null;

  @override
  bool validateMesg(Mesg mesg) {
    return _validator?.validateMesg(mesg) ?? true;
  }

  @override
  bool validateMesgDefinition(MesgDefinition defn) {
    return _validator?.validateMesgDefinition(defn) ?? true;
  }
}
