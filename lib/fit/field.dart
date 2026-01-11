import 'field_base.dart';
import 'profile.dart';
import 'subfield.dart';
import 'field_component.dart';

class Field extends FieldBase {
  @override
  final String name;
  final int num;
  @override
  int type;
  @override
  final double scale;
  @override
  final double offset;
  @override
  final String units;

  final bool isAccumulated;
  final ProfileType profileType;
  bool isExpandedField = false;

  final List<Subfield> subfields = [];
  final List<FieldComponent> components = [];

  Field(
    this.name,
    this.num,
    this.type,
    this.scale,
    this.offset,
    this.units,
    this.isAccumulated,
    this.profileType,
  );

  Field.fromOther(Field other)
      : name = other.name,
        num = other.num,
        type = other.type,
        scale = other.scale,
        offset = other.offset,
        units = other.units,
        isAccumulated = other.isAccumulated,
        profileType = other.profileType,
        isExpandedField = other.isExpandedField,
        super.fromOther(other) {
    for (var sub in other.subfields) {
      subfields.add(Subfield.fromOther(sub));
    }
    for (var comp in other.components) {
      components.add(comp);
    }
  }

  factory Field.create(
    String name,
    int num,
    int type,
    double scale,
    double offset,
    String units,
    bool accumulated,
    ProfileType profileType,
  ) {
    return Field(
      name,
      num,
      type,
      scale,
      offset,
      units,
      accumulated,
      profileType,
    );
  }

  @override
  Subfield? getSubfieldByName(String subfieldName) {
    for (var sub in subfields) {
      if (sub.name == subfieldName) return sub;
    }
    return null;
  }

  @override
  Subfield? getSubfieldByIndex(int subfieldIndex) {
    if (subfieldIndex >= 0 && subfieldIndex < subfields.length) {
      return subfields[subfieldIndex];
    }
    return null;
  }
}
