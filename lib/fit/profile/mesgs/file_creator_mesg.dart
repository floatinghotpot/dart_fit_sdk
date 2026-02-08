import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class FileCreatorMesg extends Mesg {
  static const int fieldSoftwareVersion = 0;
  static const int fieldHardwareVersion = 1;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  FileCreatorMesg() : super.from(Profile.getMesg(MesgNum.fileCreator));
  FileCreatorMesg.fromMesg(super.mesg) : super.from();

  int? getSoftwareVersion() {
    final val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getHardwareVersion() {
    final val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
