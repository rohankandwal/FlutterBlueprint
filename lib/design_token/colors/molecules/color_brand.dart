import 'package:flutter/material.dart';

class ColorBrand {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color error;
  final Color surface;
  final Color cardBackgroundColor;
  final Color background;
  final Color onSurface;

  ColorBrand({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.error,
    required this.surface,
    required this.cardBackgroundColor,
    required this.background,
    required this.onSurface,
  });

  ColorBrand lerp(ColorBrand? other, double t) {
    return ColorBrand(
      primary: Color.lerp(primary, other?.primary, t)!,
      secondary: Color.lerp(secondary, other?.secondary, t)!,
      tertiary: Color.lerp(tertiary, other?.tertiary, t)!,
      error: Color.lerp(error, other?.error, t)!,
      surface: Color.lerp(surface, other?.surface, t)!,
      cardBackgroundColor:
          Color.lerp(cardBackgroundColor, other?.cardBackgroundColor, t)!,
      background: Color.lerp(background, other?.background, t)!,
      onSurface: Color.lerp(onSurface, other?.onSurface, t)!,
    );
  }

  List<Color> get values => [
        primary,
        secondary,
        tertiary,
        error,
        surface,
        cardBackgroundColor,
        background,
        onSurface,
      ];
}
