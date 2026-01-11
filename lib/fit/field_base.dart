import 'defines.dart';
import 'subfield.dart';

abstract class FieldBase {
  final List<Object?> values = [];

  String get name;
  int get type;
  double get scale;
  double get offset;
  String get units;

  FieldBase();

  Object? get value => getValue(0);
  bool get isInvalid => value == null;

  FieldBase.fromOther(FieldBase other) {
    values.addAll(other.values);
  }

  Subfield? getSubfieldByName(String subfieldName);
  Subfield? getSubfieldByIndex(int subfieldIndex);

  String getName({int? subfieldIndex, String? subfieldName}) {
    Subfield? subfield;
    if (subfieldIndex != null) {
      subfield = getSubfieldByIndex(subfieldIndex);
    } else if (subfieldName != null) {
      subfield = getSubfieldByName(subfieldName);
    }
    return subfield == null ? name : subfield.name;
  }

  int getFieldType({int? subfieldIndex, String? subfieldName}) {
    Subfield? subfield;
    if (subfieldIndex != null) {
      subfield = getSubfieldByIndex(subfieldIndex);
    } else if (subfieldName != null) {
      subfield = getSubfieldByName(subfieldName);
    }
    return subfield == null ? type : subfield.type;
  }

  String getFieldUnits({int? subfieldIndex, String? subfieldName}) {
    Subfield? subfield;
    if (subfieldIndex != null) {
      subfield = getSubfieldByIndex(subfieldIndex);
    } else if (subfieldName != null) {
      subfield = getSubfieldByName(subfieldName);
    }
    return subfield == null ? units : subfield.units;
  }

  int getSize() {
    int size = 0;
    int baseTypeNum = type & Fit.baseTypeNumMask;

    switch (baseTypeNum) {
      case Fit.string:
        for (var element in values) {
          if (element is List<int>) {
            size += element.length;
          } else if (element is String) {
            size += element.length +
                1; // +1 for null terminator if handled as bytes
          }
        }
        break;
      default:
        if (baseTypeNum < Fit.baseType.length) {
          size = getNumValues() * Fit.baseType[baseTypeNum].size;
        }
        break;
    }
    return size;
  }

  bool isSigned({int? subfieldIndex, String? subfieldName}) {
    Subfield? subfield;
    if (subfieldIndex != null) {
      subfield = getSubfieldByIndex(subfieldIndex);
    } else if (subfieldName != null) {
      subfield = getSubfieldByName(subfieldName);
    }
    int t = subfield == null ? type : subfield.type;
    return Fit.baseType[t & Fit.baseTypeNumMask].isSigned;
  }

  void setRawValue(int index, Object? value) {
    while (values.length <= index) {
      values.add(null);
    }
    values[index] = value;
  }

  void addValue(Object? value) {
    values.add(value);
  }

  void setValue(Object? value, {int? subfieldInfo, String? subfieldName}) {
    setValueAtIndex(
      0,
      value,
      subfieldInfo: subfieldInfo,
      subfieldName: subfieldName,
    );
  }

  void setValueAtIndex(
    int index,
    Object? value, {
    int? subfieldInfo,
    String? subfieldName,
  }) {
    Subfield? subfield;
    if (subfieldInfo != null) {
      subfield = getSubfieldByIndex(subfieldInfo);
    } else if (subfieldName != null) {
      subfield = getSubfieldByName(subfieldName);
    }

    double s, o;
    if (subfield == null) {
      s = scale;
      o = offset;
    } else {
      s = subfield.scale;
      o = subfield.offset;
    }

    if (value is num) {
      if (s != 1.0 || o != 0.0) {
        // Apply inverse scale and offset
        value = (value.toDouble() + o) * s;
      }

      // Round if it's an integer type
      int baseTypeNum = type & Fit.baseTypeNumMask;
      if (Fit.baseType[baseTypeNum].isInteger) {
        value = value.round();
      }
    }

    setRawValue(index, value);
  }

  Object? getValue(int index, {int? subfieldInfo, String? subfieldName}) {
    if (index >= values.length || index < 0) {
      return null;
    }

    Subfield? subfield;
    if (subfieldInfo != null) {
      subfield = getSubfieldByIndex(subfieldInfo);
    } else if (subfieldName != null) {
      subfield = getSubfieldByName(subfieldName);
    }

    double s, o;
    if (subfield == null) {
      s = scale;
      o = offset;
    } else {
      s = subfield.scale;
      o = subfield.offset;
    }

    Object? value = values[index];
    if (value == null) return null;

    if (isNumeric()) {
      int baseTypeNum = type & Fit.baseTypeNumMask;
      var invalid = Fit.baseType[baseTypeNum].invalidValue;
      if (value == invalid) {
        return null;
      }
      if (value is num && (s != 1.0 || o != 0.0)) {
        return (value.toDouble() / s) - o;
      }
    }

    return value;
  }

  int? getBitsValue(int offset, int bits, int targetType) {
    // This is used for component expansion.
    // It needs to extract 'bits' bits from the field's values starting at bit 'offset'.
    // Typically used when a field's values are treated as a bitstream.

    // Simplification: only handle integer types for now.
    // Concatenate all values into a single large integer if needed,
    // or extract from the appropriate index.

    int baseTypeNum = type & Fit.baseTypeNumMask;
    int baseSize = Fit.baseType[baseTypeNum].size * 8;

    int valIndex = offset ~/ baseSize;
    int bitOffset = offset % baseSize;

    if (valIndex >= values.length) return null;

    Object? val = values[valIndex];
    if (val is! int) return null;

    // Extract bits
    int mask = (1 << bits) - 1;
    return (val >> bitOffset) & mask;
  }

  int getNumValues() {
    return values.length;
  }

  bool isNumeric() {
    int baseTypeNum = type & Fit.baseTypeNumMask;
    if (baseTypeNum >= Fit.baseType.length) return false;
    switch (baseTypeNum) {
      case Fit.enum_:
      case Fit.string:
        return false;
      default:
        return true;
    }
  }
}
