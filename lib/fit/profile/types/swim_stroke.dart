class SwimStroke {
  static const int freestyle = 0;
  static const int backstroke = 1;
  static const int breaststroke = 2;
  static const int butterfly = 3;
  static const int drill = 4;
  static const int mixed = 5;
  /// IM is a mixed interval containing the same number of lengths for each of: Butterfly, Backstroke, Breaststroke, Freestyle, swam in that order.
  static const int im = 6;
  /// For repeated workout steps, a new individual medly stroke is used for each round.
  static const int imByRound = 7;
  /// Reverse IM Order
  static const int rimo = 8;
}
