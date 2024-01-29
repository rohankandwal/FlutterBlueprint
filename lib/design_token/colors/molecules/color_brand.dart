import 'package:flutter/material.dart';

class ColorBrand {
  final Color main;
  final Color error;
  final Color secondary;

  ColorBrand({
    required this.main,
    required this.error,
    required this.secondary,
  });

  ColorBrand lerp(ColorBrand? other, double t) {
    return ColorBrand(
      main: Color.lerp(main, other?.main, t)!,
      error: Color.lerp(error, other?.error, t)!,
      secondary: Color.lerp(secondary, other?.secondary, t)!,
    );
  }
}
