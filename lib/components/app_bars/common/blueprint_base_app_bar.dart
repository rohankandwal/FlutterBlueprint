import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_prefix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_suffix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/components/common/blueprint_popup_menu_button.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

class BlueprintBaseAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final FlutterBluePrintThemeExtension theme;
  final List<BluePrintAppBarSuffixData> suffixes;
  final BluePrintAppBarPrefixData? prefixData;
  final bool showActionButtonAsPopupMenu;
  final bool centerTitle;

  const BlueprintBaseAppBar({
    super.key,
    required this.title,
    required this.theme,
    required this.suffixes,
    required this.prefixData,
    required this.showActionButtonAsPopupMenu,
    required this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: theme.textStyle.body_700,
      ),
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
