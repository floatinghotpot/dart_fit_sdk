import 'dart:typed_data';

class Crc {
  static final Uint16List _crcTable = Uint16List.fromList([
    0x0000,
    0xCC01,
    0xD801,
    0x1400,
    0xF001,
    0x3C00,
    0x2800,
    0xE401,
    0xA001,
    0x6C00,
    0x7800,
    0xB401,
    0x5000,
    0x9C01,
    0x8801,
    0x4400,
  ]);

  static int get16(int crc, int data) {
    int tmp;

    // compute checksum of lower four bits of byte
    tmp = _crcTable[crc & 0xF];
    crc = (crc >> 4) & 0x0FFF;
    crc = crc ^ tmp ^ _crcTable[data & 0xF];

    // compute checksum of upper four bits of byte
    tmp = _crcTable[crc & 0xF];
    crc = (crc >> 4) & 0x0FFF;
    crc = crc ^ tmp ^ _crcTable[(data >> 4) & 0xF];

    return crc & 0xFFFF;
  }

  static int calc16(List<int> dataBlock, int size) {
    int crc = 0;

    for (int i = 0; i < size; i++) {
      crc = get16(crc, dataBlock[i]);
    }
    return crc;
  }
}
