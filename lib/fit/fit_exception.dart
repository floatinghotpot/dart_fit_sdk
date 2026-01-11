class FitException implements Exception {
  final String message;
  final Exception? innerException;

  FitException([this.message = '', this.innerException]);

  @override
  String toString() {
    if (innerException != null) {
      return 'FitException: $message ($innerException)';
    }
    return 'FitException: $message';
  }
}
