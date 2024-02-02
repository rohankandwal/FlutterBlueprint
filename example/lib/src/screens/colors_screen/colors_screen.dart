import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/layout/colors_section.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colors = theme.colors;

    final Map<String, Color> brandMap = _getColorHexNameMap(colors.brand.values);
    final Map<String, Color> interactionMap = _getColorHexNameMap(colors.interaction.values);
    final Map<String, Color> messagingMap = _getColorHexNameMap(colors.messaging.values);
    final Map<String, Color> neutralMap = _getColorHexNameMap(colors.neutral.values);

    return CustomScaffold(
      title: 'Colors',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: theme.spacings.spacing16,
            vertical: theme.spacings.spacing24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColorsSection(
                title: 'colors.brand',
                colors: brandMap.values.toList(),
                colorTitles: brandMap.keys.toList(),
              ),
              ColorsSection(
                title: 'colors.interaction',
                colors: interactionMap.values.toList(),
                colorTitles: interactionMap.keys.toList(),
              ),
              ColorsSection(
                title: 'colors.messaging',
                colors: messagingMap.values.toList(),
                colorTitles: messagingMap.keys.toList(),
              ),
              ColorsSection(
                title: 'colors.neutral',
                colors: neutralMap.values.toList(),
                colorTitles: neutralMap.keys.toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Converts colors to a map with hex-code names.
  Map<String, Color> _getColorHexNameMap(List<Color> colors) => {for (var e in colors) e.toString(): e};
}
