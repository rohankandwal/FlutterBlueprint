import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_prefix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_suffix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/components/common/blueprint_popup_menu_button.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

class BlueprintSmallAppBar extends StatelessWidget {
  final String title;
  final FlutterBluePrintThemeExtension theme;
  final List<BluePrintAppBarSuffixData> suffixes;
  final BluePrintAppBarPrefixData? prefixData;
  final bool showActionButtonAsPopupMenu;
  final bool centerTitle;
  final bool pinned;
  final Color? actionIconColor;
  final Color? backgroundColor;
  final Color? titleColor;

  const BlueprintSmallAppBar({
    required this.title,
    required this.theme,
    this.prefixData,
    this.suffixes = const [],
    this.showActionButtonAsPopupMenu = false,
    this.centerTitle = false,
    this.pinned = true,
    this.actionIconColor,
    this.backgroundColor,
    this.titleColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: backgroundColor ?? theme.colors.brand.primary,
      title: Text(
        title,
        style: theme.textStyle.body_700.copyWith(
          color: titleColor ?? theme.colors.brand.onPrimary,
        ),
      ),
      automaticallyImplyLeading: false,
      pinned: pinned,
      centerTitle: centerTitle,
      iconTheme: IconThemeData(
        color: theme.colors.brand.surface,
      ),
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
                    iconColor: actionIconColor,
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
