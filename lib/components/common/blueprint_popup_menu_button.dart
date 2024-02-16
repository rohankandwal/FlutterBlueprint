import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);

class BluePrintPopupMenuButton<T> extends StatelessWidget {
  final List<T> items;
  final FlutterBluePrintThemeExtension theme;
  final Widget Function(T) builder;
  final Function(T) onTap;

  const BluePrintPopupMenuButton({
    required this.items,
    required this.theme,
    required this.builder,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        highlightColor: theme.colors.interaction.hover,
        hoverColor: theme.colors.interaction.hover,
        splashColor: theme.colors.interaction.splash,
      ),
      child: PopupMenuButton<T>(
        color: theme.colors.interaction.main,
        iconColor: theme.colors.brand.onSurface,
        onSelected: onTap,
        itemBuilder: (BuildContext context) {
          return items.map((T suffixData) {
            return PopupMenuItem<T>(
              value: suffixData,
              child: builder(suffixData),
            );
          }).toList();
        },
      ),
    );
  }
}
