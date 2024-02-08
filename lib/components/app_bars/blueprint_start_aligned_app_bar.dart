import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_base_app_bar.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

class BluePrintStartAlignedAppBar extends StatelessWidget {
  final String title;
  final FlutterBluePrintThemeExtension theme;
  final List<BluePrintAppBarSuffixData> suffixes;
  final BluePrintAppBarPrefixData? prefixData;
  final bool showActionButtonAsPopupMenu;

  const BluePrintStartAlignedAppBar({
    required this.title,
    required this.theme,
    this.prefixData,
    this.suffixes = const [],
    this.showActionButtonAsPopupMenu = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlueprintBaseAppBar(
      key: UniqueKey(),
      title: title,
      theme: theme,
      suffixes: suffixes,
      prefixData: prefixData,
      showActionButtonAsPopupMenu: showActionButtonAsPopupMenu,
      centerTitle: false,
    );
  }
}
