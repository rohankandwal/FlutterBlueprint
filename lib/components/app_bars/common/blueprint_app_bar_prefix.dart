import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

class BluePrintAppBarPrefix extends StatelessWidget {
  final FlutterBluePrintThemeExtension theme;
  final BluePrintAppBarPrefixData prefixData;

  const BluePrintAppBarPrefix({
    required this.prefixData,
    required this.theme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final icon = prefixData.prefixType == BluePrintAppBarPrefixType.back
        ? Icons.arrow_back_outlined
        : Icons.close_outlined;
    return IconButton(
      highlightColor: theme.colors.interaction.pressed,
      focusColor: theme.colors.interaction.hover,
      hoverColor: theme.colors.interaction.hover,
      onPressed: prefixData.onPressed,
      icon: Icon(
        icon,
      ),
    );
  }
}
