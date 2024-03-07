import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/buttons/core/blueprint_core_button.dart';
import 'package:flutter_blueprint/components/buttons/core/blueprint_core_button_style.dart';
import 'package:flutter_blueprint/components/buttons/outlined_button/blueprint_outlined_button_style.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint/types/material_state.dart';

class BluePrintOutlinedButton extends StatelessWidget {
  final String label;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Function()? onPressed;

  const BluePrintOutlinedButton({
    required this.label,
    this.onPressed,
    this.leftIcon,
    this.rightIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final materialStateMap = getOutlinedButtonMaterialStateColorMap(theme);

    return OutlinedButton(
      onPressed: onPressed,
      style: BluePrintCoreButtonStyle(
        theme: theme,
        hasLeftIcon: leftIcon != null,
        hasRightIcon: rightIcon != null,
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => resolveMaterialState(
            states: states,
            materialStateColorMap: materialStateMap,
          ).backgroundColor,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => resolveMaterialState(
            states: states,
            materialStateColorMap: materialStateMap,
          ).foregroundColor,
        ),
        getButtonElevationMap: () => getOutlinedButtonElevationMap(theme),
        side: MaterialStateProperty.resolveWith(
          (states) => BorderSide(
            color: resolveMaterialState(
                    states: states, materialStateColorMap: materialStateMap)
                .borderColor,
            width: theme.borderWidth.borderWidthSmall,
          ),
        ),
      ),
      child: BluePrintCoreButton(
        label: label,
        leftIcon: leftIcon,
        rightIcon: rightIcon,
      ),
    );
  }
}
