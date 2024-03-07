import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/buttons/core/blueprint_core_button.dart';
import 'package:flutter_blueprint/components/buttons/core/blueprint_core_button_style.dart';
import 'package:flutter_blueprint/components/buttons/filled_button/blueprint_filled_button_style.dart';
import 'package:flutter_blueprint/types/material_state.dart';
import 'package:flutter_blueprint/util/extensions.dart';

class BluePrintFilledButton extends StatelessWidget {
  final String label;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Function()? onPressed;

  const BluePrintFilledButton({
    required this.label,
    this.onPressed,
    this.leftIcon,
    this.rightIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final materialStateMap = getFilledButtonMaterialStateColorMap(theme);

    return ElevatedButton(
      onPressed: onPressed,
      style: BluePrintCoreButtonStyle(
        theme: theme,
        hasLeftIcon: leftIcon != null,
        hasRightIcon: rightIcon != null,
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => resolveMaterialState(
                  states: states, materialStateColorMap: materialStateMap)
              .backgroundColor,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => resolveMaterialState(
                  states: states, materialStateColorMap: materialStateMap)
              .foregroundColor,
        ),
        getButtonElevationMap: () => getFilledButtonElevationMap(theme),
      ),
      child: BluePrintCoreButton(
        label: label,
        leftIcon: leftIcon,
        rightIcon: rightIcon,
      ),
    );
  }
}
