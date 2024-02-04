import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';

class BlueprintAppBarSuffix extends StatelessWidget {
  final BluePrintAppBarSuffixData suffixData;
  final FlutterBluePrintThemeExtension theme;
  final bool shownAsPopupMenu;

  const BlueprintAppBarSuffix({
    required this.suffixData,
    required this.theme,
    required this.shownAsPopupMenu,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: shownAsPopupMenu ? null : suffixData.onPressed,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: kToolbarHeight,
          minWidth: kToolbarHeight,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (suffixData.iconData != null) Icon(suffixData.iconData),
            if (suffixData.title != null && suffixData.iconData != null)
              SizedBox(
                width: theme.spacings.spacing10,
              ),
            if (suffixData.title != null) Text(suffixData.title!),
          ],
        ),
      ),
    );
  }
}
