import 'developer_data_key.dart';
import 'profile/mesgs/field_description_mesg.dart';
import 'profile/mesgs/developer_data_id_mesg.dart';
import 'developer_field_description.dart';

class DeveloperDataLookup {
  final Map<DeveloperDataKey, FieldDescriptionMesg> _fieldDescriptionMesgs = {};
  final Map<int, DeveloperDataIdMesg> _developerDataIdMesgs = {};

  DeveloperDataLookup();

  ({DeveloperDataIdMesg devId, FieldDescriptionMesg desc})? getMesgs(
    DeveloperDataKey key,
  ) {
    final devIdMesg = _developerDataIdMesgs[key.developerDataIndex];
    final descriptionMesg = _fieldDescriptionMesgs[key];

    if (devIdMesg != null && descriptionMesg != null) {
      return (devId: devIdMesg, desc: descriptionMesg);
    }

    return null;
  }

  void addIdMesg(DeveloperDataIdMesg mesg) {
    final int? index = mesg.developerDataIndex;
    if (index == null) return;

    _developerDataIdMesgs[index] = mesg;

    // Remove all fields currently associated with this developer
    _fieldDescriptionMesgs.removeWhere(
      (key, value) => key.developerDataIndex == index,
    );
  }

  DeveloperFieldDescription? addDescriptionMesg(FieldDescriptionMesg mesg) {
    DeveloperFieldDescription? desc;

    final int? developerDataIndex = mesg.developerDataIndex;
    final int? fieldDefinitionNumber = mesg.fieldDefinitionNumber;

    if (developerDataIndex != null && fieldDefinitionNumber != null) {
      final key = DeveloperDataKey(developerDataIndex, fieldDefinitionNumber);

      _fieldDescriptionMesgs[key] = mesg;

      // Build a Description of the pairing we just created
      final pair = getMesgs(key);
      if (pair != null) {
        desc = DeveloperFieldDescription(pair.devId, pair.desc);
      }
    }

    return desc;
  }
}
