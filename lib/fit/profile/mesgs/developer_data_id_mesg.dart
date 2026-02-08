import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class DeveloperDataIdMesg extends Mesg {
  static const int fieldDeveloperId = 0;
  static const int fieldApplicationId = 1;
  static const int fieldManufacturerId = 2;
  static const int fieldDeveloperDataIndex = 3;
  static const int fieldApplicationVersion = 4;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  DeveloperDataIdMesg() : super.from(Profile.getMesg(MesgNum.developerDataId));
  DeveloperDataIdMesg.fromMesg(super.mesg) : super.from();

  int? get developerId => getDeveloperId();
  int? get applicationId => getApplicationId();
  int? get manufacturerId => getManufacturerId();
  int? get developerDataIndex => getDeveloperDataIndex();
  int? get applicationVersion => getApplicationVersion();

  int get numDeveloperId => getNumFieldValues(0);
  int? getDeveloperId([int index = 0]) {
    final val = getFieldValue(
      0,
      index: index,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int get numApplicationId => getNumFieldValues(1);
  int? getApplicationId([int index = 0]) {
    final val = getFieldValue(
      1,
      index: index,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int get numManufacturerId => getNumFieldValues(2);
  int? getManufacturerId([int index = 0]) {
    final val = getFieldValue(
      2,
      index: index,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int get numDeveloperDataIndex => getNumFieldValues(3);
  int? getDeveloperDataIndex([int index = 0]) {
    final val = getFieldValue(
      3,
      index: index,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int get numApplicationVersion => getNumFieldValues(4);
  int? getApplicationVersion([int index = 0]) {
    final val = getFieldValue(
      4,
      index: index,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
