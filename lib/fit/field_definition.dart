import 'field.dart';

class FieldDefinition {
  int num = 0;
  int size = 0;
  int type = 0;

  FieldDefinition(this.num, this.size, this.type);

  FieldDefinition.fromField(Field field) {
    num = field.num;
    size = field.getSize();
    type = field.type;
  }

  FieldDefinition.fromOther(FieldDefinition other) {
    num = other.num;
    size = other.size;
    type = other.type;
  }
}
