import 'package:flutter/material.dart';
import 'package:flutter_blueprint/util/extensions.dart';

class BluePrintBottomSheetExpandedButtons extends StatelessWidget {
  final String primaryActionLabel;
  final Function() primaryActionPressed;
  final String? secondaryActionLabel;
  final Function()? secondaryActionPressed;

  const BluePrintBottomSheetExpandedButtons({
    required this.primaryActionLabel,
    required this.primaryActionPressed,
    this.secondaryActionLabel,
    this.secondaryActionPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Padding(
      padding: EdgeInsets.all(
        theme.spacings.spacing16,
      ),
      child: Row(
        children: [
          if (secondaryActionLabel != null) ...{
            // todo: buttons
            Expanded(
              child: TextButton(
                onPressed: secondaryActionPressed,
                child: Text(
                  secondaryActionLabel!,
                  style: theme.textStyle.bodySmall_400.copyWith(
                    color: theme.colors.brand.primary,
                  ),
                ),
              ),
            ),
          },
          SizedBox(
            width: theme.spacings.spacing16,
          ),
          Expanded(
            child: FilledButton(
              onPressed: primaryActionPressed,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith(
                  (states) => theme.colors.brand.primary,
                ),
              ),
              child: Text(
                primaryActionLabel,
                style: theme.textStyle.bodySmall_400.copyWith(
                  color: theme.colors.brand.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
