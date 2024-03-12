import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:provider/provider.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool showThemeConfigActionItem;
  final bool closable;
  final Color? alternativeBackgroundColor;

  const CustomScaffold({
    required this.body,
    this.title = '',
    this.showThemeConfigActionItem = false,
    this.closable = false,
    super.key,
    this.alternativeBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier themeNotifier, child) {
      return Scaffold(
        backgroundColor: theme.colors.brand.surface,
        appBar: BluePrintCenterAlignedAppBar(
          title: title,
          theme: theme,
          showActionButtonAsPopupMenu: true,
          automaticallyImplyLeading: !closable,
          suffixes: themeNotifier.themes
              .map(
                (e) => BluePrintAppBarSuffixData(
                  iconData: null,
                  title: e,
                  onPressed: () => themeNotifier.setTheme(e),
                ),
              )
              .toList(),
        ),
        body: body,
      );
    });
  }
}
