import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_tokens.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';

ColorTokens initializedWithBrand(ProjectBranding projects) {
  final colorScheme = _generateColorScheme(projects.brandColors);
  return ColorTokens(
    brand: ColorBrand(
      primary: colorScheme.primary,
      onPrimary: colorScheme.onPrimary,
      secondary: colorScheme.secondary,
      secondaryContainer: colorScheme.secondaryContainer,
      onSecondaryContainer: colorScheme.onSecondaryContainer,
      tertiary: colorScheme.tertiary,
      error: colorScheme.error,
      onError: colorScheme.onError,
      background: colorScheme.surface,
      surface: colorScheme.surface,
      cardBackgroundColor: colorScheme.surface,
      onSurface: colorScheme.onSurface,
      surfaceContainer: colorScheme.surfaceContainerHighest,
      surfaceTint: colorScheme.surfaceTint,
      outline: colorScheme.outline,
      shadow: projects.brandColors.brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    ),
    interaction: ColorInteraction(
        hover: colorScheme.primary.withOpacity(0.8),
        main: colorScheme.surfaceContainerHighest,
        pressed: colorScheme.primary.withOpacity(0.6),
        splash: colorScheme.primary.withOpacity(0.2),
        focused: colorScheme.primary.withOpacity(0.12),
        disabledColor: colorScheme.onSurface.withOpacity(.15)),
    neutral: projects.colorNeutral,
    messaging: projects.colorMessaging,
  );
}

ColorScheme _generateColorScheme(final ColorAtoms colorAtoms) =>
    SeedColorScheme.fromSeeds(
      brightness: colorAtoms.brightness,
      primaryKey: colorAtoms.primary,
      primary: colorAtoms.primary,
      primaryContainer: colorAtoms.primaryContainer,
      onPrimary: colorAtoms.onPrimary,
      onPrimaryContainer: colorAtoms.onPrimaryContainer,
      secondaryKey: colorAtoms.secondary,
      secondary: colorAtoms.secondary,
      secondaryContainer: colorAtoms.secondaryContainer,
      onSecondary: colorAtoms.onSecondary,
      onSecondaryContainer: colorAtoms.onSecondaryContainer,
      tertiary: colorAtoms.tertiary,
      tertiaryKey: colorAtoms.tertiary,
      tertiaryContainer: colorAtoms.tertiaryContainer,
      onTertiary: colorAtoms.onTertiary,
      onTertiaryContainer: colorAtoms.onTertiaryContainer,
      error: colorAtoms.error,
      errorContainer: colorAtoms.errorContainer,
      errorKey: colorAtoms.error,
      onError: colorAtoms.onError,
      onErrorContainer: colorAtoms.onErrorContainer,
      inversePrimary: colorAtoms.inversePrimary,
      inverseSurface: colorAtoms.inverseSurface,
      onInverseSurface: colorAtoms.onInverseSurface,
      onSurface: colorAtoms.onSurface,
      onSurfaceVariant: colorAtoms.onSurfaceVariant,
      outline: colorAtoms.outline,
      outlineVariant: colorAtoms.outlineVariant,
      surface: colorAtoms.surface,
      scrim: colorAtoms.scrim,
      shadow: colorAtoms.shadow,
      surfaceTint: colorAtoms.surfaceTint,
      neutralKey: colorAtoms.surface,
      neutralVariantKey: colorAtoms.surfaceVariant,
    );
