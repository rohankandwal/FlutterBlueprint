class LineHeightTokens {
  LineHeightTokens._();

  static const double lineHeight16 = 16;
  static const double lineHeight20 = 20;
  static const double lineHeight24 = 24;
  static const double lineHeight32 = 32;
  static const double lineHeight48 = 48;

  static double? calculateLineHeight({
    required double lineHeight,
    required double fontSize,
  }) {
    assert(
      (lineHeight / fontSize) >= 1,
      '''LineHeight can't be less than fontSize''',
    );
    assert(
      (lineHeight > 0 || fontSize > 0),
      '''LineHeight and fontSize should be greater than 0''',
    );
    return lineHeight / fontSize;
  }
}
