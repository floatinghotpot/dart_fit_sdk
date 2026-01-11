import 'dart:typed_data';
import '../utility/endian_binary_writer.dart';
import 'header.dart';
import 'mesg.dart';
import 'mesg_definition.dart';
import 'crc.dart';
import 'protocol_validator.dart';
import 'defines.dart';

class Encode {
  final EndianBinaryWriter _writer;
  final Header _header;
  final ProtocolValidator _validator;

  Encode([ProtocolVersion version = ProtocolVersion.v20])
    : _writer = EndianBinaryWriter(),
      _header = Header(),
      _validator = ProtocolValidator(version);

  void open() {
    // Write placeholder header
    for (int i = 0; i < Fit.headerWithCrcSize; i++) {
      _writer.writeByte(0);
    }
    _header.size = Fit.headerWithCrcSize;
  }

  void writeMesgDefinition(MesgDefinition mesgDef) {
    if (!_validator.validateMesgDefinition(mesgDef)) {
      return;
    }
    mesgDef.write(_writer);
  }

  void writeMesg(Mesg mesg) {
    if (!_validator.validateMesg(mesg)) {
      return;
    }
    mesg.write(_writer);
  }

  Uint8List close() {
    Uint8List data = _writer.toBytes();

    // Update header
    _header.dataSize = data.length - Fit.headerWithCrcSize;

    // Create new writer for the final file
    var finalWriter = EndianBinaryWriter();
    _header.write(finalWriter);

    // Copy message data
    Uint8List messageData = data.sublist(Fit.headerWithCrcSize);
    finalWriter.writeBytes(messageData);

    // Calculate and write CRC
    Uint8List allData = finalWriter.toBytes();
    int crc = Crc.calc16(allData, allData.length);

    finalWriter.writeUInt16(crc);

    return finalWriter.toBytes();
  }
}

extension MesgDefinitionSupports on MesgDefinition {
  bool supports(Mesg mesg) {
    return globalMesgNum == mesg.num;
  }
}
