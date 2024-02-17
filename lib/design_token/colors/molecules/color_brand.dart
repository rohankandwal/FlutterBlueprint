import 'package:flutter/material.dart';

class ColorBrand {
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color tertiary;
  final Color error;
  final Color surface;
  final Color cardBackgroundColor;
  final Color background;
  final Color onSurface;
  final Color surfaceContainer;

  ColorBrand({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.tertiary,
    required this.error,
    required this.surface,
    required this.cardBackgroundColor,
    required this.background,
    required this.onSurface,
    required this.surfaceContainer,
  });

  ColorBrand lerp(ColorBrand? other, double t) {
    return ColorBrand(
      primary: Color.lerp(primary, other?.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other?.onPrimary, t)!,
      secondary: Color.lerp(secondary, other?.secondary, t)!,
      tertiary: Color.lerp(tertiary, other?.tertiary, t)!,
      error: Color.lerp(error, other?.error, t)!,
      surface: Color.lerp(surface, other?.surface, t)!,
      cardBackgroundColor:
          Color.lerp(cardBackgroundColor, other?.cardBackgroundColor, t)!,
      background: Color.lerp(background, other?.background, t)!,
      onSurface: Color.lerp(onSurface, other?.onSurface, t)!,
      surfaceContainer:
          Color.lerp(surfaceContainer, other?.surfaceContainer, t)!,
    );
  }

  List<Color> get values => [
        primary,
        onPrimary,
        secondary,
        tertiary,
        error,
        surface,
        cardBackgroundColor,
        background,
        onSurface,
        surfaceContainer,
      ];
}
