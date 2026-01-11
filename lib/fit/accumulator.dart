class AccumulatedField {
  final int mesgNum;
  final int destFieldNum;
  int lastValue = 0;
  int accumulatedValue = 0;

  AccumulatedField(this.mesgNum, this.destFieldNum);

  int accumulate(int value, int bits) {
    int mask = (1 << bits) - 1;

    accumulatedValue += (value - lastValue) & mask;
    lastValue = value;

    return accumulatedValue;
  }

  int set(int value) {
    accumulatedValue = value;
    lastValue = value;
    return accumulatedValue;
  }
}

class Accumulator {
  final List<AccumulatedField> _accumulatedFields = [];

  void set(int mesgNum, int destFieldNum, int value) {
    AccumulatedField? accumField;
    for (var field in _accumulatedFields) {
      if (field.mesgNum == mesgNum && field.destFieldNum == destFieldNum) {
        accumField = field;
        break;
      }
    }

    if (accumField == null) {
      accumField = AccumulatedField(mesgNum, destFieldNum);
      _accumulatedFields.add(accumField);
    }

    accumField.set(value);
  }

  int accumulate(int mesgNum, int destFieldNum, int value, int bits) {
    AccumulatedField? accumField;
    for (var field in _accumulatedFields) {
      if (field.mesgNum == mesgNum && field.destFieldNum == destFieldNum) {
        accumField = field;
        break;
      }
    }

    if (accumField == null) {
      accumField = AccumulatedField(mesgNum, destFieldNum);
      _accumulatedFields.add(accumField);
    }

    return accumField.accumulate(value, bits);
  }
}
