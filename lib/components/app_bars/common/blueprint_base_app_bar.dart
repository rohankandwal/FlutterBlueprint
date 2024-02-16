import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_prefix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_suffix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/components/common/blueprint_popup_menu_button.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

class BlueprintBaseAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final Color? titleColor;
  final FlutterBluePrintThemeExtension theme;
  final List<BluePrintAppBarSuffixData> suffixes;
  final BluePrintAppBarPrefixData? prefixData;
  final bool showActionButtonAsPopupMenu;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final double elevation;
  final Color? backgroundColor;

  const BlueprintBaseAppBar({
    super.key,
    required this.title,
    required this.theme,
    required this.suffixes,
    required this.prefixData,
    required this.showActionButtonAsPopupMenu,
    required this.centerTitle,
    this.automaticallyImplyLeading = false,
    this.titleColor,
    this.elevation = 4,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return AppBar(
      backgroundColor: backgroundColor ?? theme.colors.brand.primary,
      elevation: elevation,
      title: Text(
        title,
        style: theme.textStyle.body_700.copyWith(
          color: titleColor ?? theme.colors.brand.onPrimary,
        ),
      ),
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading,
      iconTheme: IconThemeData(
        color: theme.colors.brand.onSurface,
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
                    builder: (suffixData) {
                      return BlueprintAppBarSuffix(
                        suffixData: suffixData,
                        theme: theme,
                        shownAsPopupMenu: showActionButtonAsPopupMenu,
                      );
                    },
                    onTap: (suffixData) => suffixData.onPressed?.call(),
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
