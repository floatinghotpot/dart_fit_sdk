import 'dart:typed_data';
import 'field_base.dart';
import 'developer_field_definition.dart';
import 'profile/mesgs/field_description_mesg.dart';
import 'profile/mesgs/developer_data_id_mesg.dart';
import 'defines.dart';
import 'subfield.dart';

class DeveloperField extends FieldBase {
  final DeveloperFieldDefinition _definition;

  bool get isDefined => _definition.isDefined;
  int get num => _definition.fieldNum;
  int get developerDataIndex => _definition.developerDataIndex;

  int get appVersion {
    if (_definition.isDefined) {
      return _definition.developerIdMesg?.applicationVersion ?? 0;
    }
    return 0;
  }

  Uint8List? get appId {
    if (_definition.isDefined) {
      var msg = _definition.developerIdMesg;
      if (msg == null) return null;

      int count = msg.numApplicationId;
      Uint8List appId = Uint8List(count);
      for (int i = 0; i < count; i++) {
        appId[i] = msg.getApplicationId(i) ?? 0xFF;
      }
      return appId;
    }
    return null;
  }

  @override
  String get name => _definition.isDefined
      ? _definition.descriptionMesg?.fieldName ?? 'unknown'
      : 'unknown';

  @override
  int get type => _definition.isDefined
      ? _definition.descriptionMesg?.fitBaseTypeId ?? Fit.uint8
      : Fit.uint8;

  @override
  double get scale => _definition.isDefined
      ? (_definition.descriptionMesg?.scale?.toDouble() ?? 1.0)
      : 1.0;

  @override
  double get offset => _definition.isDefined
      ? (_definition.descriptionMesg?.offset?.toDouble() ?? 0.0)
      : 0.0;

  @override
  String get units =>
      _definition.isDefined ? (_definition.descriptionMesg?.units ?? '') : '';

  int get nativeOverride => _definition.isDefined
      ? _definition.descriptionMesg?.nativeFieldNum ?? Fit.fieldNumInvalid
      : Fit.fieldNumInvalid;

  DeveloperField(this._definition);

  DeveloperField.fromOther(DeveloperField super.other)
    : _definition = other._definition,
      super.fromOther();

  DeveloperField.fromDescription(
    FieldDescriptionMesg description,
    DeveloperDataIdMesg developerDataIdMesg,
  ) : _definition = DeveloperFieldDefinition.fromDescription(
        description,
        developerDataIdMesg,
        0,
      );

  @override
  Subfield? getSubfieldByName(String subfieldName) {
    // Developer Fields do not currently support Sub Fields
    return null;
  }

  @override
  Subfield? getSubfieldByIndex(int subfieldIndex) {
    // Developer Fields do not currently support Sub Fields
    return null;
  }
}
