import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

class BluePrintCoreButton extends StatelessWidget {
  final String label;
  final IconData? leftIcon;
  final IconData? rightIcon;

  const BluePrintCoreButton({
    required this.label,
    this.leftIcon,
    this.rightIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (leftIcon != null) ...{
          BluePrintIcon(
            iconData: leftIcon!,
            iconSize: BluePrintIconSize.small,
          ),
          SizedBox(
            width: theme.spacings.spacing8,
          ),
        },
        Text(label),
        if (rightIcon != null) ...{
          SizedBox(
            width: theme.spacings.spacing8,
          ),
          BluePrintIcon(
            iconData: rightIcon!,
            iconSize: BluePrintIconSize.small,
          ),
        },
      ],
    );
  }
}
