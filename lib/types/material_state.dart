import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

enum BluePrintMaterialState {
  disabled,
  hovered,
  pressed,
  main,
  focused,
}

class BluePrintMaterialStateColor {
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;

  const BluePrintMaterialStateColor({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderColor,
  });
}

BluePrintMaterialStateColor resolveMaterialState({
  required Set<WidgetState> states,
  required Map<BluePrintMaterialState, BluePrintMaterialStateColor>
      materialStateColorMap,
}) {
  if (states.contains(WidgetState.disabled)) {
    return materialStateColorMap[BluePrintMaterialState.disabled]!;
  } else if (states.contains(WidgetState.pressed)) {
    return materialStateColorMap[BluePrintMaterialState.pressed]!;
  } else if (states.contains(WidgetState.hovered)) {
    return materialStateColorMap[BluePrintMaterialState.hovered]!;
  } else if (states.contains(WidgetState.focused)) {
    return materialStateColorMap[BluePrintMaterialState.focused]!;
  }
  return materialStateColorMap[BluePrintMaterialState.main]!;
}

Map<BluePrintMaterialState, BluePrintMaterialStateColor>
    getMaterialStateColorMap(FlutterBluePrintThemeExtension theme) => {
          BluePrintMaterialState.main: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.neutral.transparent,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.interaction.main,
          ),
          BluePrintMaterialState.pressed: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.neutral.transparent,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.interaction.main,
          ),
          BluePrintMaterialState.hovered: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.neutral.transparent,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.interaction.main,
          ),
          BluePrintMaterialState.disabled: BluePrintMaterialStateColor(
            backgroundColor: theme.colors.neutral.transparent,
            borderColor: theme.colors.neutral.transparent,
            foregroundColor: theme.colors.neutral.neutral40,
          ),
        };

double resolveElevationMaterialState({
  required Set<WidgetState> states,
  required Map<BluePrintMaterialState, double> materialStateColorMap,
}) {
  if (states.contains(WidgetState.disabled)) {
    return materialStateColorMap[BluePrintMaterialState.disabled]!;
  } else if (states.contains(WidgetState.pressed)) {
    return materialStateColorMap[BluePrintMaterialState.pressed]!;
  } else if (states.contains(WidgetState.hovered)) {
    return materialStateColorMap[BluePrintMaterialState.hovered]!;
  } else if (states.contains(WidgetState.focused)) {
    return materialStateColorMap[BluePrintMaterialState.focused]!;
  }
  return materialStateColorMap[BluePrintMaterialState.main]!;
}
