class DeveloperDataKey implements Comparable<DeveloperDataKey> {
  final int developerDataIndex;
  final int fieldDefNum;

  DeveloperDataKey(this.developerDataIndex, this.fieldDefNum);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DeveloperDataKey) return false;
    return developerDataIndex == other.developerDataIndex &&
        fieldDefNum == other.fieldDefNum;
  }

  @override
  int get hashCode =>
      (developerDataIndex.hashCode * 397) ^ fieldDefNum.hashCode;

  @override
  int compareTo(DeveloperDataKey other) {
    if (developerDataIndex > other.developerDataIndex) return 1;
    if (developerDataIndex < other.developerDataIndex) return -1;
    if (fieldDefNum > other.fieldDefNum) return 1;
    if (fieldDefNum < other.fieldDefNum) return -1;
    return 0;
  }
}
