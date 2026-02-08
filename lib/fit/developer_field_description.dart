import 'dart:typed_data';
import 'profile/mesgs/developer_data_id_mesg.dart';
import 'profile/mesgs/field_description_mesg.dart';

class DeveloperFieldDescription {
  final DeveloperDataIdMesg _developerDataId;
  final FieldDescriptionMesg _fieldDescription;

  int get applicationVersion =>
      _developerDataId.applicationVersion ?? 0xFFFFFFFF;

  Uint8List get applicationId {
    final int count = _developerDataId.numApplicationId;
    final Uint8List appId = Uint8List(count);
    for (int i = 0; i < count; i++) {
      appId[i] = _developerDataId.getApplicationId(i) ?? 0xFF;
    }
    return appId;
  }

  int get fieldDefinitionNumber =>
      _fieldDescription.fieldDefinitionNumber ?? 0xFF;

  DeveloperFieldDescription(this._developerDataId, this._fieldDescription);
}
