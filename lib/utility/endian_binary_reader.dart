import 'dart:typed_data';
import 'dart:convert';

class EndianBinaryReader {
  final Uint8List _data;
  final ByteData _byteData;
  int _position = 0;
  bool isBigEndian = false;

  EndianBinaryReader(this._data, [this.isBigEndian = false])
    : _byteData = ByteData.view(
        _data.buffer,
        _data.offsetInBytes,
        _data.length,
      );

  int get position => _position;
  set position(int pos) => _position = pos;
  int get length => _data.length;

  bool get isOpen => true;

  int read(Uint8List buffer, int offset, int count) {
    int bytesToRead = count;
    if (_position + count > _data.length) {
      bytesToRead = _data.length - _position;
    }
    if (bytesToRead <= 0) return 0;
    buffer.setRange(
      offset,
      offset + bytesToRead,
      _data.sublist(_position, _position + bytesToRead),
    );
    _position += bytesToRead;
    return bytesToRead;
  }

  int readByte() {
    return _data[_position++];
  }

  Uint8List readBytes(int count) {
    final result = _data.sublist(_position, _position + count);
    _position += count;
    return result;
  }

  int readInt16() {
    final int result = _byteData.getInt16(
      _position,
      isBigEndian ? Endian.big : Endian.little,
    );
    _position += 2;
    return result;
  }

  int readUInt16() {
    final int result = _byteData.getUint16(
      _position,
      isBigEndian ? Endian.big : Endian.little,
    );
    _position += 2;
    return result;
  }

  int readInt32() {
    final int result = _byteData.getInt32(
      _position,
      isBigEndian ? Endian.big : Endian.little,
    );
    _position += 4;
    return result;
  }

  int readUInt32() {
    final int result = _byteData.getUint32(
      _position,
      isBigEndian ? Endian.big : Endian.little,
    );
    _position += 4;
    return result;
  }

  int readSInt64() {
    final int result = _byteData.getInt64(
      _position,
      isBigEndian ? Endian.big : Endian.little,
    );
    _position += 8;
    return result;
  }

  int readUInt64() {
    final int result = _byteData.getUint64(
      _position,
      isBigEndian ? Endian.big : Endian.little,
    );
    _position += 8;
    return result;
  }

  double readFloat32() {
    final double result = _byteData.getFloat32(
      _position,
      isBigEndian ? Endian.big : Endian.little,
    );
    _position += 4;
    return result;
  }

  double readFloat64() {
    final double result = _byteData.getFloat64(
      _position,
      isBigEndian ? Endian.big : Endian.little,
    );
    _position += 8;
    return result;
  }

  String readString() {
    // Read until null terminator or end of stream
    final int start = _position;
    while (_position < _data.length && _data[_position] != 0) {
      _position++;
    }
    final String result = utf8.decode(_data.sublist(start, _position));
    if (_position < _data.length && _data[_position] == 0) {
      _position++; // Skip null terminator
    }
    return result;
  }

  int readSByte() {
    final int val = _data[_position++];
    return val > 127 ? val - 256 : val;
  }
}
