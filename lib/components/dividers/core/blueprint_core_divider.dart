import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/dividers/types/blueprint_divider_size.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

class BluePrintCoreDivider extends StatelessWidget {
  final BluePrintDividerSize dividerSize;
  final BluePrintDividerOrientation orientation;
  final Color? color;
  final double startIndent;
  final double endIndent;
  final double spacing;

  const BluePrintCoreDivider({
    required this.dividerSize,
    required this.orientation,
    this.color,
    this.startIndent = 0,
    this.endIndent = 0,
    this.spacing = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return orientation == BluePrintDividerOrientation.horizontal
        ? Divider(
            color: color ?? theme.colors.brand.onSurface,
            height: spacing,
            thickness: dividerSize.height,
            indent: startIndent,
            endIndent: endIndent,
          )
        : VerticalDivider(
            width: spacing,
            thickness: dividerSize.height,
            indent: startIndent,
            endIndent: endIndent,
            color: color ?? theme.colors.brand.onSurface,
          );
  }
}
