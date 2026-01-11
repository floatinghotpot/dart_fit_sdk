class Checksum {
  /// Allows clear of checksum for flash memory where can only write 1 to 0 without erasing sector.
  static const int clear = 0;
  /// Set to mark checksum as valid if computes to invalid values 0 or 0xFF. Checksum can also be set to ok to save encoding computation time.
  static const int ok = 1;
}
