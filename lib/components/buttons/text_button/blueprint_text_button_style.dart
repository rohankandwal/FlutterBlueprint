import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';
import 'package:flutter_blueprint/types/material_state.dart';

Map<BluePrintMaterialState, BluePrintMaterialStateColor>
    getTextButtonMaterialStateColorMap(FlutterBluePrintThemeExtension theme) =>
        {
          BluePrintMaterialState.main: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.neutral.transparent,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.primary,
          ),
          BluePrintMaterialState.hovered: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.neutral.transparent,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.primary,
          ),
          BluePrintMaterialState.focused: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.focused,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.primary,
          ),
          BluePrintMaterialState.pressed: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.focused,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.primary,
          ),
          BluePrintMaterialState.disabled: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.neutral.transparent,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.onSurface
                .withOpacity(theme.opacities.opacity40),
          ),
        };

Map<BluePrintMaterialState, double> getTextButtonElevationMap(
        FlutterBluePrintThemeExtension theme) =>
    {
      BluePrintMaterialState.main: theme.elevations.elevationLow.elevation,
      BluePrintMaterialState.pressed: theme.elevations.elevationLow.elevation,
      BluePrintMaterialState.hovered: theme.elevations.elevationLow.elevation,
      BluePrintMaterialState.disabled: theme.elevations.elevationLow.elevation,
    };

double resolveTextButtonElevationMaterialState({
  required Set<MaterialState> states,
  required Map<BluePrintMaterialState, double> materialStateColorMap,
}) {
  if (states.contains(MaterialState.disabled)) {
    return materialStateColorMap[BluePrintMaterialState.disabled]!;
  } else if (states.contains(MaterialState.pressed)) {
    return materialStateColorMap[BluePrintMaterialState.pressed]!;
  } else if (states.contains(MaterialState.hovered)) {
    return materialStateColorMap[BluePrintMaterialState.hovered]!;
  } else if (states.contains(MaterialState.focused)) {
    return materialStateColorMap[BluePrintMaterialState.focused]!;
  }
  return materialStateColorMap[BluePrintMaterialState.main]!;
}
