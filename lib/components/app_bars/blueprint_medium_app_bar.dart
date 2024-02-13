import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_prefix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_suffix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/components/common/blueprint_popup_menu_button.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

class BlueprintMediumAppBar extends StatelessWidget {
  final String title;
  final FlutterBluePrintThemeExtension theme;
  final List<BluePrintAppBarSuffixData> suffixes;
  final BluePrintAppBarPrefixData? prefixData;
  final bool showActionButtonAsPopupMenu;
  final bool centerTitle;

  const BlueprintMediumAppBar({
    required this.title,
    required this.theme,
    this.prefixData,
    this.suffixes = const [],
    this.showActionButtonAsPopupMenu = false,
    this.centerTitle = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      title: Text(
        title,
        style: theme.textStyle.body_700,
      ),
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      leading: prefixData == null
          ? null
          : BluePrintAppBarPrefix(prefixData: prefixData!, theme: theme),
      actions: suffixes.isEmpty
          ? null
          : showActionButtonAsPopupMenu
              ? [
                  BluePrintPopupMenuButton<BluePrintAppBarSuffixData>(
                    items: suffixes,
                    theme: theme,
                    builder: (suffixData) {
                      return BlueprintAppBarSuffix(
                        suffixData: suffixData,
                        theme: theme,
                        shownAsPopupMenu: showActionButtonAsPopupMenu,
                      );
                    },
                    onTap: (suffixData) {},
                  ),
                ]
              : suffixes
                  .mapIndexed(
                    (index, suffixData) => Row(
                      children: [
                        BlueprintAppBarSuffix(
                          suffixData: suffixData,
                          theme: theme,
                          shownAsPopupMenu: false,
                        ),
                        if (index != suffixes.length)
                          SizedBox(
                            width: theme.spacings.spacing8,
                            height: theme.spacings.spacing8,
                          ),
                      ],
                    ),
                  )
                  .toList(
                    growable: false,
                  ),
    );
  }
}
