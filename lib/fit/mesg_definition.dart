import 'mesg.dart';
import 'defines.dart';
import 'field_definition.dart';
import 'developer_field_definition.dart';
import 'developer_data_lookup.dart';
import 'developer_data_key.dart';
import '../utility/endian_binary_reader.dart';
import '../utility/endian_binary_writer.dart';

class MesgDefinition {
  int localMesgNum = 0;
  int globalMesgNum = Fit.fieldNumInvalid;
  bool isBigEndian = false;
  final List<FieldDefinition> _fields = [];
  final List<DeveloperFieldDefinition> _developerFieldDefinitions = [];

  MesgDefinition();

  MesgDefinition.fromMesg(Mesg mesg)
    : localMesgNum = mesg.localNum,
      globalMesgNum = mesg.num,
      isBigEndian = false {
    for (var field in mesg.fields) {
      if (field.getSize() > 0) {
        _fields.add(FieldDefinition.fromField(field));
      }
    }
    for (var devField in mesg.developerFields) {
      if (devField.getSize() > 0) {
        _developerFieldDefinitions.add(
          DeveloperFieldDefinition(
            fieldNum: devField.num,
            size: devField.getSize(),
            developerDataIndex: devField.developerDataIndex,
          ),
        );
      }
    }
  }

  void addField(FieldDefinition field) {
    _fields.add(field);
  }

  void addDeveloperField(DeveloperFieldDefinition field) {
    _developerFieldDefinitions.add(field);
  }

  List<FieldDefinition> getFields() => _fields;
  List<DeveloperFieldDefinition> get developerFieldDefinitions =>
      _developerFieldDefinitions;

  void read(EndianBinaryReader reader, {DeveloperDataLookup? lookup}) {
    int headerByte = reader.readByte();
    localMesgNum = headerByte & Fit.localMesgNumMask;

    // Skip reserved byte
    reader.readByte();

    isBigEndian = reader.readByte() == Fit.bigEndian;
    bool originalEndian = reader.isBigEndian;
    reader.isBigEndian = isBigEndian;

    globalMesgNum = reader.readUInt16();
    int numFields = reader.readByte();

    _fields.clear();
    for (int i = 0; i < numFields; i++) {
      int fNum = reader.readByte();
      int fSize = reader.readByte();
      int fType = reader.readByte();
      _fields.add(FieldDefinition(fNum, fSize, fType));
    }

    _developerFieldDefinitions.clear();
    if (headerByte & Fit.devDataMask == Fit.devDataMask) {
      int numDevFields = reader.readByte();
      for (int i = 0; i < numDevFields; i++) {
        int fNum = reader.readByte();
        int fSize = reader.readByte();
        int devIndex = reader.readByte();

        DeveloperFieldDefinition? defn;
        if (lookup != null) {
          var key = DeveloperDataKey(devIndex, fNum);
          var tuple = lookup.getMesgs(key);
          if (tuple != null) {
            defn = DeveloperFieldDefinition.fromDescription(
              tuple.desc,
              tuple.devId,
              fSize,
            );
          }
        }

        defn ??= DeveloperFieldDefinition(
          fieldNum: fNum,
          size: fSize,
          developerDataIndex: devIndex,
        );

        _developerFieldDefinitions.add(defn);
      }
    }

    reader.isBigEndian = originalEndian;
  }

  void write(EndianBinaryWriter writer) {
    int header = Fit.mesgDefinitionMask | (localMesgNum & Fit.localMesgNumMask);
    if (_developerFieldDefinitions.isNotEmpty) {
      header |= Fit.devDataMask;
    }
    writer.writeByte(header);
    writer.writeByte(0); // Reserved
    writer.writeByte(isBigEndian ? Fit.bigEndian : Fit.littleEndian);

    bool originalEndian = writer.isBigEndian;
    writer.isBigEndian = isBigEndian;

    writer.writeUInt16(globalMesgNum);
    writer.writeByte(_fields.length);

    for (var field in _fields) {
      writer.writeByte(field.num);
      writer.writeByte(field.size);
      writer.writeByte(field.type);
    }

    if (_developerFieldDefinitions.isNotEmpty) {
      writer.writeByte(_developerFieldDefinitions.length);
      for (var devField in _developerFieldDefinitions) {
        writer.writeByte(devField.fieldNum);
        writer.writeByte(devField.size);
        writer.writeByte(devField.developerDataIndex);
      }
    }

    writer.isBigEndian = originalEndian;
  }
}
