import 'mesg.dart';
import 'field.dart';
import 'defines.dart';
import 'field_component.dart';

class SubfieldMap {
  int refFieldNum;
  Object refFieldValue;

  SubfieldMap(this.refFieldNum, this.refFieldValue);

  SubfieldMap.fromOther(SubfieldMap other)
    : refFieldNum = other.refFieldNum,
      refFieldValue = other.refFieldValue;

  bool canMesgSupport(Mesg mesg) {
    Field? field = mesg.getField(refFieldNum);

    if (field != null) {
      Object? value = field.getValue(
        0,
        subfieldInfo: Fit.subfieldIndexMainField,
      );
      if (value == null) return false;

      // Numeric comparison
      if (value is num && refFieldValue is num) {
        return value.toInt() == (refFieldValue as num).toInt();
      }
      return value == refFieldValue;
    }
    return false;
  }
}

class Subfield {
  final String name;
  final int type;
  final double scale;
  final double offset;
  final String units;
  final List<SubfieldMap> maps = [];
  final List<FieldComponent> components = [];

  Subfield(this.name, this.type, this.scale, this.offset, this.units);

  Subfield.fromOther(Subfield other)
    : name = other.name,
      type = other.type,
      scale = other.scale,
      offset = other.offset,
      units = other.units {
    for (var map in other.maps) {
      maps.add(SubfieldMap.fromOther(map));
    }
    for (var component in other.components) {
      components.add(FieldComponent.fromOther(component));
    }
  }

  void addMap(int refFieldNum, Object refFieldValue) {
    maps.add(SubfieldMap(refFieldNum, refFieldValue));
  }

  void addComponent(FieldComponent newComponent) {
    components.add(newComponent);
  }

  bool canMesgSupport(Mesg mesg) {
    for (var map in maps) {
      if (map.canMesgSupport(mesg)) {
        return true;
      }
    }
    return false;
  }
}
