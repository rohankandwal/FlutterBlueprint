import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_prefix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_suffix.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

class BluePrintCenterAlignedAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final FlutterBluePrintThemeExtension theme;
  final List<BluePrintAppBarSuffixData> suffixes;
  final BluePrintAppBarPrefixData? prefixData;
  final bool showActionButtonAsPopupMenu;

  const BluePrintCenterAlignedAppBar({
    required this.title,
    required this.theme,
    this.prefixData,
    this.suffixes = const [],
    this.showActionButtonAsPopupMenu = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: theme.textStyle.body_700,
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: prefixData == null
          ? null
          : BluePrintAppBarPrefix(prefixData: prefixData!, theme: theme),
      actions: suffixes.isEmpty
          ? null
          : showActionButtonAsPopupMenu
              ? [
                  PopupMenuButton<BluePrintAppBarSuffixData>(
                    onSelected: (suffixData) {
                      suffixData.onPressed?.call();
                    },
                    itemBuilder: (BuildContext context) {
                      return suffixes
                          .map((BluePrintAppBarSuffixData suffixData) {
                        return PopupMenuItem<BluePrintAppBarSuffixData>(
                          value: suffixData,
                          child: BlueprintAppBarSuffix(
                            suffixData: suffixData,
                            theme: theme,
                            shownAsPopupMenu: showActionButtonAsPopupMenu,
                          ),
                        );
                      }).toList();
                    },
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
