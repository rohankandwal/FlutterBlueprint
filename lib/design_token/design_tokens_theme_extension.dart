import 'package:flutter/material.dart';

@immutable
class DesignTokensThemeExtension
    extends ThemeExtension<DesignTokensThemeExtension> {

  DesignTokensThemeExtension() {

  }

  @override
  ThemeExtension<DesignTokensThemeExtension> copyWith() {
    return DesignTokensThemeExtension(

    );
  }

  @override
  ThemeExtension<DesignTokensThemeExtension> lerp(
      covariant ThemeExtension<DesignTokensThemeExtension>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}
