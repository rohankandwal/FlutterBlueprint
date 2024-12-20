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
            backgroundColor: theme.colors.interaction.disabledColor,
            borderColor: theme.colors.interaction.disabledColor,
            foregroundColor: theme.colors.brand.onSurface
                .withOpacity(theme.opacities.opacity40),
          ),
          BluePrintMaterialState.focused: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.hover,
            borderColor: theme.colors.brand.primary,
            foregroundColor: theme.colors.brand.onPrimary,
          ),
        };

Map<BluePrintMaterialState, double> getFilledButtonElevationMap(
        FlutterBluePrintThemeExtension theme) =>
    {
      BluePrintMaterialState.main: theme.elevations.elevationMedium.elevation,
      BluePrintMaterialState.pressed: theme.elevations.elevationLow.elevation,
      BluePrintMaterialState.hovered:
          theme.elevations.elevationMedium.elevation,
      BluePrintMaterialState.disabled: theme.elevations.elevationLow.elevation,
    };
