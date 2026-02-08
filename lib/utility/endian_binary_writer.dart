import 'dart:typed_data';

class EndianBinaryWriter {
  final BytesBuilder _builder = BytesBuilder();
  bool isBigEndian = false;

  EndianBinaryWriter([this.isBigEndian = false]);

  Uint8List contents() => _builder.toBytes();

  Uint8List toBytes() => _builder.toBytes();

  void writeByte(int value) {
    _builder.addByte(value & 0xFF);
  }

  void writeSByte(int value) {
    _builder.addByte(value & 0xFF);
  }

  void writeBytes(Uint8List value) {
    _builder.add(value);
  }

  void writeInt16(int value) {
    final bd = ByteData(2);
    bd.setInt16(0, value, isBigEndian ? Endian.big : Endian.little);
    _builder.add(bd.buffer.asUint8List());
  }

  void writeUInt16(int value) {
    final bd = ByteData(2);
    bd.setUint16(0, value, isBigEndian ? Endian.big : Endian.little);
    _builder.add(bd.buffer.asUint8List());
  }

  void writeInt32(int value) {
    final bd = ByteData(4);
    bd.setInt32(0, value, isBigEndian ? Endian.big : Endian.little);
    _builder.add(bd.buffer.asUint8List());
  }

  void writeUInt32(int value) {
    final bd = ByteData(4);
    bd.setUint32(0, value, isBigEndian ? Endian.big : Endian.little);
    _builder.add(bd.buffer.asUint8List());
  }

  void writeSInt64(int value) {
    final bd = ByteData(8);
    bd.setInt64(0, value, isBigEndian ? Endian.big : Endian.little);
    _builder.add(bd.buffer.asUint8List());
  }

  void writeUInt64(int value) {
    final bd = ByteData(8);
    bd.setUint64(0, value, isBigEndian ? Endian.big : Endian.little);
    _builder.add(bd.buffer.asUint8List());
  }

  void writeFloat32(double value) {
    final bd = ByteData(4);
    bd.setFloat32(0, value, isBigEndian ? Endian.big : Endian.little);
    _builder.add(bd.buffer.asUint8List());
  }

  void writeFloat64(double value) {
    final bd = ByteData(8);
    bd.setFloat64(0, value, isBigEndian ? Endian.big : Endian.little);
    _builder.add(bd.buffer.asUint8List());
  }
}
