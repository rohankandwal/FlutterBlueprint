import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/dividers/core/blueprint_core_divider.dart';
import 'package:flutter_blueprint/components/dividers/types/blueprint_divider_orientation.dart';
import 'package:flutter_blueprint/components/dividers/types/blueprint_divider_size.dart';

class BluePrintMediumDivider extends StatelessWidget {
  final BluePrintDividerOrientation orientation;
  final Color? color;
  final double startIndent;
  final double endIndent;
  final double spacing;

  const BluePrintMediumDivider({
    this.orientation = BluePrintDividerOrientation.horizontal,
    this.color,
    this.startIndent = 0,
    this.endIndent = 0,
    this.spacing = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BluePrintCoreDivider(
      dividerSize: BluePrintDividerSize.medium,
      orientation: orientation,
      endIndent: endIndent,
      startIndent: startIndent,
      spacing: spacing,
      color: color,
    );
  }
}
