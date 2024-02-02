import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/layout/colors_grid_view.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/text/label_text.dart';

class ColorsSection extends StatelessWidget {
  final String title;
  final List<Color> colors;
  final List<String> colorTitles;
  final double? maxCrossAxisExtent;
  final double? childAspectRatio;

  const ColorsSection({
    required this.title,
    required this.colors,
    required this.colorTitles,
    this.maxCrossAxisExtent,
    this.childAspectRatio,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(title: title),
        SizedBox(height: theme.spacings.spacing4),
        ColorsGridView(
          colors: colors,
          colorTitles: colorTitles,
          maxCrossAxisExtent: maxCrossAxisExtent,
          childAspectRatio: childAspectRatio,
        ),
      ],
    );
  }
}
