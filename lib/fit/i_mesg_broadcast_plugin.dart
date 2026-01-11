import 'mesg.dart';

class MesgBroadcastEventArgs {
  final List<Mesg> mesgs;
  MesgBroadcastEventArgs(this.mesgs);
}

class IncomingMesgEventArgs {
  final Mesg mesg;
  IncomingMesgEventArgs(this.mesg);
}

abstract class IMesgBroadcastPlugin {
  void onBroadcast(Object sender, MesgBroadcastEventArgs e);
  void onIncomingMesg(Object sender, IncomingMesgEventArgs e);
}
