import 'dart:typed_data';

enum ProtocolVersion { v10, v20 }

extension ProtocolVersionExtension on ProtocolVersion {
  int get major => versionMap[this]!.major;
  int get minor => versionMap[this]!.minor;
  int get versionByte => (major << Fit.protocolVersionMajorShift) | minor;

  static final Map<ProtocolVersion, ({int major, int minor})> versionMap = {
    ProtocolVersion.v10: (major: 1, minor: 0),
    ProtocolVersion.v20: (major: 2, minor: 0),
  };
}

class Fit {
  static const int protocolVersionMajorShift = 4;
  static const int protocolVersionMajorMask =
      (0x0f << protocolVersionMajorShift);

  static final int protocolVersion = ProtocolVersion.v20.versionByte;
  static final int protocolMajorVersion = ProtocolVersion.v20.major;
  static final int protocolMinorVersion = ProtocolVersion.v20.minor;

  static const int profileVersionScale = 1000;
  static const int profileMajorVersion = 21;
  static const int profileMinorVersion = 188;
  static const int profileVersion =
      (profileMajorVersion * profileVersionScale) + profileMinorVersion;

  static const int headerTypeMask = 0xf0;
  static const int compressedHeaderMask = 0x80;
  static const int compressedTimeMask = 0x1f;
  static const int compressedLocalMesgNumMask = 0x60;

  static const int mesgDefinitionMask = 0x40;
  static const int devDataMask = 0x20;
  static const int mesgHeaderMask = 0x00;
  static const int localMesgNumMask = 0x0f;
  static const int maxLocalMesgs = localMesgNumMask + 1;

  static const int mesgDefinitionReserved = 0x00;
  static const int littleEndian = 0x00;
  static const int bigEndian = 0x01;

  static const int maxMesgSize = 65535;
  static const int maxFieldSize = 255;

  static const int headerWithCrcSize = 14;
  static const int headerWithoutCrcSize = (headerWithCrcSize - 2);

  static const int fieldNumInvalid = 255;
  static const int fieldNumTimeStamp = 253;

  static const int subfieldIndexMainField = subfieldIndexActiveSubfield + 1;
  static const int subfieldIndexActiveSubfield = 0xfffe;
  static const String subfieldNameMainField = '';

  static final List<FitType> baseType = [
    FitType(false, 0x00, 'enum', 0xff, 1, false, false),
    FitType(false, 0x01, 'sint8', 0x7f, 1, true, true),
    FitType(false, 0x02, 'uint8', 0xff, 1, false, true),
    FitType(true, 0x83, 'sint16', 0x7fff, 2, true, true),
    FitType(true, 0x84, 'uint16', 0xffff, 2, false, true),
    FitType(true, 0x85, 'sint32', 0x7fffffff, 4, true, true),
    FitType(true, 0x86, 'uint32', 0xffffffff, 4, false, true),
    FitType(false, 0x07, 'string', 0x00, 1, false, false),
    FitType(true, 0x88, 'float32', _getFloat32Invalid(), 4, true, false),
    FitType(true, 0x89, 'float64', _getFloat64Invalid(), 8, true, false),
    FitType(false, 0x0a, 'uint8z', 0x00, 1, false, true),
    FitType(true, 0x8b, 'uint16z', 0x0000, 2, false, true),
    FitType(true, 0x8c, 'uint32z', 0x00000000, 4, false, true),
    FitType(false, 0x0d, 'byte', 0xff, 1, false, false),
    FitType(true, 0x8E, 'sint64', BigInt.parse('9223372036854775807'), 8, true, true),
    FitType(true, 0x8F, 'uint64', BigInt.parse('18446744073709551615'), 8, false, true),
    // FitType(true, 0x8e, 'sint64', 0x7fffffffffffffff, 8, true, true),
    // FitType(true, 0x8f, 'uint64', 0xffffffffffffffff, 8, false, true),
    FitType(true, 0x90, 'uint64z', BigInt.parse('0'), 8, false, true),
  ];

  static double _getFloat32Invalid() {
    var bd = ByteData(4);
    bd.setUint32(0, 0xffffffff);
    return bd.getFloat32(0);
  }

  static double _getFloat64Invalid() {
    var bd = ByteData(8);
    //bd.setUint64(0, 0xffffffffffffffff);
    for (int i = 0; i < 8; i++) {
      bd.setUint8(i, 0xff);
    }
    return bd.getFloat64(0);
  }

  // Index into the BaseTypes array
  static const int enum_ = 0x00;
  static const int sint8 = 0x01;
  static const int uint8 = 0x02;
  static const int sint16 = 0x03;
  static const int uint16 = 0x04;
  static const int sint32 = 0x05;
  static const int uint32 = 0x06;
  static const int string = 0x07;
  static const int float32 = 0x08;
  static const int float64 = 0x09;
  static const int uint8z = 0x0a;
  static const int uint16z = 0x0b;
  static const int uint32z = 0x0c;
  static const int byte = 0x0d;
  static const int sint64 = 0x0e;
  static const int uint64 = 0x0f;
  static const int uint64z = 0x10;

  static const int enumType = enum_;
  static const int sInt8 = sint8;
  static const int uInt8 = uint8;
  static const int sInt16 = sint16;
  static const int uInt16 = uint16;
  static const int sInt32 = sint32;
  static const int uInt32 = uint32;
  static const int uInt8z = uint8z;
  static const int uInt16z = uint16z;
  static const int uInt32z = uint32z;
  static const int sInt64 = sint64;
  static const int uInt64 = uint64;
  static const int uInt64z = uint64z;

  static const int baseTypeNumMask = 0x1f;

  static bool isNumericInvalid(Object? value, int type) {
    if (value == null) return true;
    int baseTypeNum = type & Fit.baseTypeNumMask;
    if (baseTypeNum >= Fit.baseType.length) return true;
    var invalid = Fit.baseType[baseTypeNum].invalidValue;

    if (value is double && invalid is double) {
      if (value.isNaN && invalid.isNaN) return true;
      return value == invalid;
    }
    return value == invalid;
  }
}

class FitType {
  final bool endianAbility;
  final int baseTypeField;
  final String typeName;
  final Object invalidValue;
  final int size;
  final bool isSigned;
  final bool isInteger;

  FitType(
    this.endianAbility,
    this.baseTypeField,
    this.typeName,
    this.invalidValue,
    this.size,
    this.isSigned,
    this.isInteger,
  );
}
