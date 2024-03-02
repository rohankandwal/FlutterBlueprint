import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';
import 'package:flutter_blueprint/types/material_state.dart';

Map<BluePrintMaterialState, BluePrintMaterialStateColor>
    getTonalButtonMaterialStateColorMap(FlutterBluePrintThemeExtension theme) =>
        {
          BluePrintMaterialState.main: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.brand.secondaryContainer,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.onSecondaryContainer,
          ),
          BluePrintMaterialState.hovered: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.brand.secondaryContainer,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.onSecondaryContainer,
          ),
          BluePrintMaterialState.pressed: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.brand.secondaryContainer,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.onSecondaryContainer,
          ),
          BluePrintMaterialState.disabled: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.disabledColor,
            borderColor: theme.colors.interaction.disabledColor,
            foregroundColor: theme.colors.brand.onSurface
                .withOpacity(theme.opacities.opacity40),
          ),
          BluePrintMaterialState.focused: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.interaction.hover,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.brand.onSurface,
          ),
        };

Map<BluePrintMaterialState, double> getTonalButtonElevationMap(
        FlutterBluePrintThemeExtension theme) =>
    {
      BluePrintMaterialState.main: theme.elevations.elevationMedium.elevation,
      BluePrintMaterialState.pressed: theme.elevations.elevationLow.elevation,
      BluePrintMaterialState.hovered:
          theme.elevations.elevationMedium.elevation,
      BluePrintMaterialState.disabled: theme.elevations.elevationLow.elevation,
    };
