import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';

class PadMesg extends Mesg {
  PadMesg() : super.from(Profile.getMesg(MesgNum.pad));
  PadMesg.fromMesg(Mesg mesg) : super.from(mesg);
}
