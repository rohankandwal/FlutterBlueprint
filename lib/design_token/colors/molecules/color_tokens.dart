import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_brand.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_interaction.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_messaging.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_neutral.dart';

class ColorTokens extends ThemeExtension<ColorTokens> {
  final ColorBrand brand;
  final ColorInteraction interaction;
  final ColorNeutral neutral;
  final ColorMessaging messaging;

  const ColorTokens({
    required this.brand,
    required this.interaction,
    required this.neutral,
    required this.messaging,
  });

  @override
  ThemeExtension<ColorTokens> copyWith({
    final ColorBrand? brand,
    final ColorInteraction? interaction,
    final ColorNeutral? neutral,
    final ColorMessaging? messaging,
  }) {
    return ColorTokens(
      brand: brand ?? this.brand,
      interaction: interaction ?? this.interaction,
      neutral: neutral ?? this.neutral,
      messaging: messaging ?? this.messaging,
    );
  }

  @override
  ThemeExtension<ColorTokens> lerp(
      covariant ThemeExtension<ColorTokens>? other, double t) {
    if (other is! ColorTokens) {
      return this;
    }
    return ColorTokens(
      brand: brand.lerp(other.brand, t),
      interaction: interaction.lerp(other.interaction, t),
      neutral: neutral,
      messaging: messaging,
    );
  }
}
