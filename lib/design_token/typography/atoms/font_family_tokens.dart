import 'dart:ui';

class FontFamilyTokens {
  FontFamilyTokens._();

  static const String ltr = 'Roboto';
  static const String rtl = 'NotoSans';

  static String getFontFamily({required TextDirection textDirection}) =>
      textDirection == TextDirection.ltr ? ltr : rtl;
}
