import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';
import 'package:flutter_blueprint/types/material_state.dart';

Map<BluePrintMaterialState, BluePrintMaterialStateColor>
    getElevatedButtonMaterialStateColorMap(
            FlutterBluePrintThemeExtension theme) =>
        {
          BluePrintMaterialState.main: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.main,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.primary,
          ),
          BluePrintMaterialState.hovered: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.main.withOpacity(0.8),
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.primary,
          ),
          BluePrintMaterialState.focused: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.main.withOpacity(0.8),
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.primary,
          ),
          BluePrintMaterialState.pressed: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.main.withOpacity(0.8),
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.primary,
          ),
          BluePrintMaterialState.disabled: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.disabledColor,
            borderColor: theme.colors.brand.onSurface.withOpacity(
              theme.opacities.opacity10,
            ),
            foregroundColor: theme.colors.brand.onSurface.withOpacity(
              theme.opacities.opacity40,
            ),
          ),
        };

Map<BluePrintMaterialState, double> getElevatedButtonElevationMap(
        FlutterBluePrintThemeExtension theme) =>
    {
      BluePrintMaterialState.main: theme.elevations.elevationMedium.elevation,
      BluePrintMaterialState.pressed:
          theme.elevations.elevationMedium.elevation,
      BluePrintMaterialState.hovered: theme.elevations.elevationHigh.elevation,
      BluePrintMaterialState.disabled: theme.elevations.elevationLow.elevation,
    };
