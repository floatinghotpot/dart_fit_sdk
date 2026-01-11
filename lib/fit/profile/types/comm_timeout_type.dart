class CommTimeoutType {
  /// Timeout pairing to any device
  static const int wildcardPairingTimeout = 0;
  /// Timeout pairing to previously paired device
  static const int pairingTimeout = 1;
  /// Temporary loss of communications
  static const int connectionLost = 2;
  /// Connection closed due to extended bad communications
  static const int connectionTimeout = 3;
}
