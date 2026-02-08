import 'mesg.dart';
import 'mesg_definition.dart';
import 'profile/mesgs/mesgs.dart';
import 'profile/types/mesg_num.dart';

class MesgEventArgs {
  Mesg mesg;
  MesgEventArgs(this.mesg);
}

class MesgDefinitionEventArgs {
  MesgDefinition mesgDef;
  MesgDefinitionEventArgs(this.mesgDef);
}

class MesgBroadcaster {
  final List<void Function(Object, MesgDefinitionEventArgs)>
  mesgDefinitionListeners = [];
  final List<void Function(Object, MesgEventArgs)> mesgListeners = [];
  final Map<int, List<void Function(Object, MesgEventArgs)>>
  _specificMesgListeners = {};

  void onMesg(Object sender, MesgEventArgs e) {
    for (var listener in mesgListeners) {
      listener(sender, e);
    }

    final listeners = _specificMesgListeners[e.mesg.num];
    if (listeners != null) {
      // We need to wrap the message in its specific type for some listeners
      // but standard MesgBroadcaster in C# just sends a MesgEventArgs
      // that might contain the typed message.
      // In C#, it does: RecordMesg recordMesg = new RecordMesg(e.mesg);
      // Let's create a helper to get the typed event args.
      final typedArgs = _getTypedEventArgs(e.mesg);
      for (var listener in listeners) {
        listener(sender, typedArgs);
      }
    }
  }

  void onMesgDefinition(Object sender, MesgDefinitionEventArgs e) {
    for (var listener in mesgDefinitionListeners) {
      listener(sender, e);
    }
  }

  void addListener(int mesgNum, void Function(Object, MesgEventArgs) listener) {
    _specificMesgListeners.putIfAbsent(mesgNum, () => []).add(listener);
  }

  MesgEventArgs _getTypedEventArgs(Mesg mesg) {
    switch (mesg.num) {
      case MesgNum.record:
        return MesgEventArgs(RecordMesg.fromMesg(mesg));
      case MesgNum.session:
        return MesgEventArgs(SessionMesg.fromMesg(mesg));
      case MesgNum.lap:
        return MesgEventArgs(LapMesg.fromMesg(mesg));
      case MesgNum.activity:
        return MesgEventArgs(ActivityMesg.fromMesg(mesg));
      case MesgNum.fileId:
        return MesgEventArgs(FileIdMesg.fromMesg(mesg));
      case MesgNum.deviceInfo:
        return MesgEventArgs(DeviceInfoMesg.fromMesg(mesg));
      // Add more as needed, but for now these are the most common
      default:
        return MesgEventArgs(mesg);
    }
  }
}
