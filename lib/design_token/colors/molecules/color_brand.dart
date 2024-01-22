import 'package:flutter/material.dart';

class ColorBrand {
  final Color main;
  final Color dark;
  final Color secondary;

  ColorBrand({
    required this.main,
    required this.dark,
    required this.secondary,
  });

  ColorBrand lerp(ColorBrand? other, double t) {
    return ColorBrand(
      main: Color.lerp(main, other?.main, t)!,
      dark: Color.lerp(dark, other?.dark, t)!,
      secondary: Color.lerp(dark, other?.dark, t)!,
    );
  }
}
