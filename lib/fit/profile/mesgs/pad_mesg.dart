import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';

class PadMesg extends Mesg {
  PadMesg() : super.from(Profile.getMesg(MesgNum.pad));
  PadMesg.fromMesg(super.mesg) : super.from();
}
