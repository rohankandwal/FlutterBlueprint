import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

class BluePrintBadge extends StatelessWidget {
  final int? badgeCount;

  const BluePrintBadge({
    this.badgeCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      decoration: BoxDecoration(
        color: theme.colors.brand.error,
        shape: BoxShape.circle,
      ),
      child: badgeCount != null && badgeCount != 0
          ? Padding(
              padding: EdgeInsets.all(theme.spacings.spacing4),
              child: Text(
                badgeCount!.toFormattingNumbers(),
                style: theme.textStyle.bodySmall_700.copyWith(
                  color: theme.colors.brand.onError,
                  fontSize: theme.spacings.spacing8,
                ),
              ),
            )
          : SizedBox(
              width: theme.spacings.spacing8,
              height: theme.spacings.spacing8,
            ),
    );
  }
}
