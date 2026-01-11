import 'dart:typed_data';
import 'dart:convert';
import '../utility/endian_binary_reader.dart';
import '../utility/endian_binary_writer.dart';
import 'defines.dart';
import 'fit_exception.dart';
import 'crc.dart';

class Header {
  int _size = 0;
  String _dataType = ".FIT";

  int get size => _size;
  set size(int value) {
    if (value == Fit.headerWithCrcSize || value == Fit.headerWithoutCrcSize) {
      _size = value;
    } else {
      throw FitException("Tried to set Header Size to $value");
    }
  }

  int protocolVersion = 0;
  int profileVersion = 0;
  int dataSize = 0;
  int crc = 0;

  Header([ProtocolVersion version = ProtocolVersion.v20]) {
    _size = Fit.headerWithCrcSize;
    protocolVersion = version.versionByte;
    profileVersion = Fit.profileVersion;
    dataSize = 0;
    _dataType = ".FIT";
    updateCrc();
  }

  Header.fromReader(EndianBinaryReader reader) {
    read(reader);
  }

  bool isValid() {
    return _dataType == ".FIT";
  }

  void read(EndianBinaryReader reader) {
    try {
      size = reader.readByte();
      protocolVersion = reader.readByte();
      profileVersion = reader.readUInt16();
      dataSize = reader.readUInt32();
      _dataType = utf8.decode(reader.readBytes(4));
      if (size == Fit.headerWithCrcSize) {
        crc = reader.readUInt16();
      } else {
        crc = 0;
      }
    } catch (e) {
      throw FitException(
        "Header:read() Failed at byte ${reader.position} - $e",
      );
    }
  }

  void write(EndianBinaryWriter writer) {
    writer.writeByte(size);
    writer.writeByte(protocolVersion);
    writer.writeUInt16(profileVersion);
    writer.writeUInt32(dataSize);
    writer.writeBytes(Uint8List.fromList(utf8.encode(_dataType)));
    if (size == Fit.headerWithCrcSize) {
      writer.writeUInt16(crc);
    }
  }

  void updateCrc() {
    EndianBinaryWriter writer = EndianBinaryWriter(false);
    write(writer);
    Uint8List buffer = writer.contents();
    crc = Crc.calc16(buffer, buffer.length - 2);
  }
}
