import 'package:flutter/material.dart';
import 'package:flutter_blueprint/util/extensions.dart';

class BluePrintBottomSheetStartAlignedButtons extends StatelessWidget {
  final String primaryActionLabel;
  final Function() primaryActionPressed;
  final String? secondaryActionLabel;
  final Function()? secondaryActionPressed;

  const BluePrintBottomSheetStartAlignedButtons({
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
            FilledButton(
              onPressed: primaryActionPressed,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
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
            SizedBox(
              width: theme.spacings.spacing16,
            ),
            TextButton(
              onPressed: secondaryActionPressed,
              child: Text(
                secondaryActionLabel!,
                style: theme.textStyle.bodySmall_400.copyWith(
                  color: theme.colors.brand.primary,
                ),
              ),
            ),
          },
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}