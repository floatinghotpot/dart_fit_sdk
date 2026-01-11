import 'profile/mesgs/field_description_mesg.dart';
import 'profile/mesgs/developer_data_id_mesg.dart';
import 'fit_exception.dart';

class DeveloperFieldDefinition {
  final FieldDescriptionMesg? descriptionMesg;
  final DeveloperDataIdMesg? developerIdMesg;

  final int fieldNum;
  final int size;
  final int developerDataIndex;

  bool get isDefined => descriptionMesg != null;

  DeveloperFieldDefinition({
    required this.fieldNum,
    required this.size,
    required this.developerDataIndex,
  }) : descriptionMesg = null,
       developerIdMesg = null;

  DeveloperFieldDefinition.fromDescription(
    FieldDescriptionMesg desc,
    DeveloperDataIdMesg devId,
    this.size,
  ) : descriptionMesg = desc,
      developerIdMesg = devId,
      fieldNum = desc.fieldDefinitionNumber ?? 0,
      developerDataIndex = desc.developerDataIndex ?? 0 {
    if (desc.developerDataIndex == null || desc.fieldDefinitionNumber == null) {
      throw FitException(
        "Description Message must have a valid developer data index and field definition number",
      );
    }
  }
}
