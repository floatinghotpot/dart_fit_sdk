import 'dart:convert';
import '../../defines.dart';
import '../../mesg.dart';
import '../../profile.dart';
import '../types/mesg_num.dart';
import '../types/types.dart';

class FieldDescriptionMesg extends Mesg {
  static const int fieldDeveloperDataIndex = 0;
  static const int fieldFieldDefinitionNumber = 1;
  static const int fieldFitBaseTypeId = 2;
  static const int fieldFieldName = 3;
  static const int fieldArray = 4;
  static const int fieldComponents = 5;
  static const int fieldScale = 6;
  static const int fieldOffset = 7;
  static const int fieldUnits = 8;
  static const int fieldBits = 9;
  static const int fieldAccumulate = 10;
  static const int fieldFitBaseUnitId = 13;
  static const int fieldNativeMesgNum = 14;
  static const int fieldNativeFieldNum = 15;
  static const int fieldInvalid = Fit.fieldNumInvalid;

  FieldDescriptionMesg()
      : super.from(Profile.getMesg(MesgNum.fieldDescription));
  FieldDescriptionMesg.fromMesg(super.mesg) : super.from();

  int? get developerDataIndex => getDeveloperDataIndex();
  int? get fieldDefinitionNumber => getFieldDefinitionNumber();
  int? get fitBaseTypeId => getFitBaseTypeId();
  String? get fieldName => getFieldName();
  int? get array => getArray();
  String? get components => getComponents();
  int? get scale => getScale();
  int? get offset => getOffset();
  String? get units => getUnits();
  String? get bits => getBits();
  String? get accumulate => getAccumulate();
  int? get fitBaseUnitId => getFitBaseUnitId();
  int? get nativeMesgNum => getNativeMesgNum();
  int? get nativeFieldNum => getNativeFieldNum();

  String? _asString(Object? val) {
    if (val == null) return null;
    if (val is List<int>) {
      var bytes = val;
      if (bytes.isNotEmpty && bytes.last == 0) {
        bytes = bytes.sublist(0, bytes.length - 1);
      }
      return utf8.decode(bytes, allowMalformed: true);
    }
    return val.toString();
  }

  int? getDeveloperDataIndex() {
    var val = getFieldValue(
      0,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFieldDefinitionNumber() {
    var val = getFieldValue(
      1,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getFitBaseTypeId() {
    var val = getFieldValue(
      2,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getFieldName() {
    var val = getFieldValue(
      3,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return _asString(val);
  }

  int? getArray() {
    var val = getFieldValue(
      4,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getComponents() {
    var val = getFieldValue(
      5,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return _asString(val);
  }

  int? getScale() {
    var val = getFieldValue(
      6,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getOffset() {
    var val = getFieldValue(
      7,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  String? getUnits() {
    var val = getFieldValue(
      8,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return _asString(val);
  }

  String? getBits() {
    var val = getFieldValue(
      9,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return _asString(val);
  }

  String? getAccumulate() {
    var val = getFieldValue(
      10,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return _asString(val);
  }

  int? getFitBaseUnitId() {
    var val = getFieldValue(
      13,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNativeMesgNum() {
    var val = getFieldValue(
      14,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }

  int? getNativeFieldNum() {
    var val = getFieldValue(
      15,
      index: 0,
      subfieldInfo: Fit.subfieldIndexMainField,
    );
    return val as int?;
  }
}
