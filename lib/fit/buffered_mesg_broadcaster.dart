import 'mesg.dart';
import 'mesg_broadcaster.dart';
import 'i_mesg_broadcast_plugin.dart';

class BufferedMesgBroadcaster extends MesgBroadcaster {
  final List<Mesg> _mesgs = [];

  final List<void Function(Object, MesgBroadcastEventArgs)>
  mesgBroadcastListeners = [];
  final List<void Function(Object, IncomingMesgEventArgs)>
  incomingMesgListeners = [];

  void registerMesgBroadcastPlugin(IMesgBroadcastPlugin plugin) {
    mesgBroadcastListeners.add(plugin.onBroadcast);
    incomingMesgListeners.add(plugin.onIncomingMesg);
  }

  @override
  void onMesg(Object sender, MesgEventArgs e) {
    _mesgs.add(e.mesg);
    for (var listener in incomingMesgListeners) {
      listener(sender, IncomingMesgEventArgs(e.mesg));
    }
  }

  void broadcast() {
    for (var listener in mesgBroadcastListeners) {
      listener(this, MesgBroadcastEventArgs(_mesgs));
    }

    for (var mesg in _mesgs) {
      super.onMesg(this, MesgEventArgs(mesg));
    }
  }
}
