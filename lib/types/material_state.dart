import 'dart:ui';

import 'package:flutter/material.dart';

enum BluePrintMaterialState {
  disabled,
  hovered,
  pressed,
  main,
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

  BluePrintMaterialStateColor resolveMaterialState({
    required Set<MaterialState> states,
    required Map<BluePrintMaterialState, BluePrintMaterialStateColor>
        materialStateColorMap,
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
}
