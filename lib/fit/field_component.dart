class FieldComponent {
  int fieldNum;
  bool accumulate;
  int bits;
  double scale;
  double offset;
  int type; // Added type field

  int accumulatedValue = 0;
  int lastValue = 0;

  FieldComponent(
    this.fieldNum,
    this.accumulate,
    this.bits,
    this.scale,
    this.offset, [
    this.type = 0,
  ]);

  FieldComponent.fromOther(FieldComponent other)
    : fieldNum = other.fieldNum,
      accumulate = other.accumulate,
      bits = other.bits,
      scale = other.scale,
      offset = other.offset,
      type = other.type,
      accumulatedValue = other.accumulatedValue,
      lastValue = other.lastValue;

  int accumulateValue(int value) {
    int mask = (1 << bits) - 1;

    accumulatedValue += (value - lastValue) & mask;
    lastValue = value;

    return accumulatedValue;
  }
}
