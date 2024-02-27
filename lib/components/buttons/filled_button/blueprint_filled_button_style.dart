import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';
import 'package:flutter_blueprint/types/material_state.dart';

Map<BluePrintMaterialState, BluePrintMaterialStateColor>
    getFilledButtonMaterialStateColorMap(
            FlutterBluePrintThemeExtension theme) =>
        {
          BluePrintMaterialState.main: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.brand.primary,
            borderColor: theme.colors.brand.primary,
            foregroundColor: theme.colors.brand.onPrimary,
          ),
          BluePrintMaterialState.pressed: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.pressed,
            borderColor: theme.colors.interaction.pressed,
            foregroundColor: theme.colors.brand.onPrimary,
          ),
          BluePrintMaterialState.hovered: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.hover,
            borderColor: theme.colors.interaction.hover,
            foregroundColor: theme.colors.brand.onPrimary,
          ),
          BluePrintMaterialState.disabled: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.brand.onSurface
                .withOpacity(theme.opacities.opacity15),
            borderColor: theme.colors.brand.onSurface
                .withOpacity(theme.opacities.opacity15),
            foregroundColor: theme.colors.brand.onSurface
                .withOpacity(theme.opacities.opacity40),
          ),
        };

Map<BluePrintMaterialState, double> getButtonElevationMap(
        FlutterBluePrintThemeExtension theme) =>
    {
      BluePrintMaterialState.main: theme.elevations.elevationMedium.elevation,
      BluePrintMaterialState.pressed: theme.elevations.elevationLow.elevation,
      BluePrintMaterialState.hovered:
          theme.elevations.elevationMedium.elevation,
      BluePrintMaterialState.disabled: theme.elevations.elevationLow.elevation,
    };

double resolveElevationMaterialState({
  required Set<MaterialState> states,
  required Map<BluePrintMaterialState, double> materialStateColorMap,
}) {
  if (states.contains(MaterialState.disabled)) {
    return materialStateColorMap[BluePrintMaterialState.disabled]!;
  } else if (states.contains(MaterialState.pressed)) {
    return materialStateColorMap[BluePrintMaterialState.pressed]!;
  } else if (states.contains(MaterialState.hovered)) {
    return materialStateColorMap[BluePrintMaterialState.hovered]!;
  }
  return materialStateColorMap[BluePrintMaterialState.main]!;
}
