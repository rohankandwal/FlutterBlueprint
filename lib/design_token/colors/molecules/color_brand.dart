import 'package:flutter/material.dart';

class ColorBrand {
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color error;
  final Color onError;
  final Color surface;
  final Color onSurface;
  final Color surfaceContainer;
  final Color surfaceTint;
  final Color background;
  final Color cardBackgroundColor;
  final Color outline;
  final Color shadow;

  ColorBrand({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.error,
    required this.onError,
    required this.surface,
    required this.outline,
    required this.cardBackgroundColor,
    required this.background,
    required this.onSurface,
    required this.surfaceContainer,
    required this.surfaceTint,
    required this.shadow,
  });

  ColorBrand lerp(ColorBrand? other, double t) {
    return ColorBrand(
      primary: Color.lerp(primary, other?.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other?.onPrimary, t)!,
      secondary: Color.lerp(secondary, other?.secondary, t)!,
      secondaryContainer:
          Color.lerp(secondaryContainer, other?.secondaryContainer, t)!,
      onSecondaryContainer:
          Color.lerp(onSecondaryContainer, other?.onSecondaryContainer, t)!,
      tertiary: Color.lerp(tertiary, other?.tertiary, t)!,
      error: Color.lerp(error, other?.error, t)!,
      onError: Color.lerp(onError, other?.onError, t)!,
      surface: Color.lerp(surface, other?.surface, t)!,
      outline: Color.lerp(outline, other?.outline, t)!,
      cardBackgroundColor:
          Color.lerp(cardBackgroundColor, other?.cardBackgroundColor, t)!,
      background: Color.lerp(background, other?.background, t)!,
      onSurface: Color.lerp(onSurface, other?.onSurface, t)!,
      surfaceContainer:
          Color.lerp(surfaceContainer, other?.surfaceContainer, t)!,
      surfaceTint: Color.lerp(surfaceTint, other?.surfaceTint, t)!,
      shadow: Color.lerp(shadow, other?.shadow, t)!,
    );
  }

  List<Color> get values => [
        primary,
        onPrimary,
        secondary,
        secondaryContainer,
        onSecondaryContainer,
        tertiary,
        error,
        onError,
        surface,
        outline,
        cardBackgroundColor,
        background,
        onSurface,
        surfaceContainer,
        surfaceTint,
        shadow,
      ];
}
