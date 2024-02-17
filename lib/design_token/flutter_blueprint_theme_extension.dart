import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/border_radius/border_radius_tokens.dart';
import 'package:flutter_blueprint/design_token/border_width/border_width_tokens.dart';
import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint/design_token/colors/elevation/elevation_tokens.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_tokens.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';
import 'package:flutter_blueprint/design_token/opacity/opacity_tokens.dart';
import 'package:flutter_blueprint/design_token/spacing/spacing_tokens.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/available_fonts.dart';
import 'package:flutter_blueprint/design_token/typography/molecules/text_style_tokens.dart';

@immutable
class FlutterBluePrintThemeExtension
    extends ThemeExtension<FlutterBluePrintThemeExtension> {
  late final TextDirection textDirection;
  late final ColorTokens colors;
  late final ElevationTokens elevations;
  late final SpacingTokens spacings;
  late final OpacityTokens opacities;
  late final BorderRadiusTokens borderRadius;
  late final BorderWidthTokens borderWidth;
  late final TextStyleTokens textStyle;

  FlutterBluePrintThemeExtension({
    required this.textDirection,
    required this.colors,
    final TextStyleTokens? textStyle,
    final ElevationTokens? elevations,
    final AvailableFonts? ltr,
    final AvailableFonts? rtl,
  }) {
    spacings = SpacingTokens();
    opacities = OpacityTokens();
    borderRadius = BorderRadiusTokens();
    borderWidth = BorderWidthTokens();

    this.elevations = elevations ??
        ElevationTokens(opacityTokens: opacities, colorTokens: colors);
    this.textStyle = textStyle ??
        TextStyleTokens(
          textDirection: textDirection,
          ltr: ltr,
          rtl: rtl,
          textColor: colors.brand.onSurface,
        );
  }

  FlutterBluePrintThemeExtension.initWithBrandAndTextDirection({
    required this.textDirection,
    required ProjectBranding branding,
    final AvailableFonts? ltr,
    final AvailableFonts? rtl,
  }) {
    spacings = SpacingTokens();
    opacities = OpacityTokens();
    borderRadius = BorderRadiusTokens();
    borderWidth = BorderWidthTokens();
    colors = initializedWithBrand(branding);
    textStyle = TextStyleTokens(
      textDirection: textDirection,
      ltr: ltr,
      rtl: rtl,
      textColor: colors.brand.onSurface,
    );
    elevations = ElevationTokens(opacityTokens: opacities, colorTokens: colors);
  }

  @override
  ThemeExtension<FlutterBluePrintThemeExtension> copyWith({
    TextDirection? textDirection,
    ColorTokens? colors,
    ElevationTokens? elevations,
    TextStyleTokens? textStyle,
    final AvailableFonts? ltr,
    final AvailableFonts? rtl,
  }) {
    final colorUpdated = colors ?? this.colors;
    final textDirectionUpdated = textDirection ?? this.textDirection;
    return FlutterBluePrintThemeExtension(
      textDirection: textDirectionUpdated,
      colors: colorUpdated,
      elevations: elevations?.copyWith(colorTokens: colorUpdated) ??
          this.elevations.copyWith(colorTokens: colorUpdated),
      textStyle: textStyle?.copyWith(
            textDirection: textDirectionUpdated,
            ltr: ltr,
            rtl: rtl,
          ) ??
          this.textStyle.copyWith(
                textDirection: textDirectionUpdated,
                ltr: ltr,
                rtl: rtl,
              ),
    );
  }

  @override
  ThemeExtension<FlutterBluePrintThemeExtension> lerp(
      covariant ThemeExtension<FlutterBluePrintThemeExtension>? other,
      double t) {
    if (other is! FlutterBluePrintThemeExtension) {
      return this;
    }
    final ColorTokens colorTokensLerp =
        colors.lerp(other.colors, t) as ColorTokens;
    return FlutterBluePrintThemeExtension(
      textDirection: textDirection,
      colors: colorTokensLerp,
      elevations: elevations.copyWith(
        colorTokens: colorTokensLerp,
      ),
      textStyle: textStyle,
    );
  }
}
