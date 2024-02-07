import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/available_fonts.dart';

class FontFamilyTokens {
  FontFamilyTokens._();

  static const AvailableFonts ltr = AvailableFonts.roboto;
  static const AvailableFonts rtl = AvailableFonts.notoSans;

  static TextStyle getFontFamily({
    required TextDirection textDirection,
    required AvailableFonts? ltr,
    required AvailableFonts? rtl,
  }) {
    final TextStyle textStyle;
    if (textDirection == TextDirection.ltr) {
      textStyle = ltr ?? FontFamilyTokens.ltr.fontName();
    } else {
      textStyle = rtl ?? FontFamilyTokens.rtl.fontName();
    }
    return textStyle;
  }
}
