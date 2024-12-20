import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/text/label_text.dart';

class CenterAlignedAppBarScreen extends StatelessWidget {
  const CenterAlignedAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return CustomScaffold(
      title: "Center Appbars",
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const LabelText(title: "Center Aligned Appbar with suffix action"),
            BluePrintCenterAlignedAppBar(
              title: "title",
              theme: theme,
              prefixData: BluePrintAppBarPrefixData(
                prefixType: BluePrintAppBarPrefixType.back,
                onPressed: Navigator.of(context).pop,
              ),
              suffixes: [
                BluePrintAppBarSuffixData(
                  iconData: Icons.person,
                  title: "My Profile",
                  onPressed: () {},
                ),
                BluePrintAppBarSuffixData(
                  iconData: Icons.logout,
                  title: null,
                  onPressed: () {},
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const LabelText(
                title:
                    "Center Aligned Appbar with suffix action in PopUp Menu"),
            BluePrintCenterAlignedAppBar(
              title: "title",
              theme: theme,
              showActionButtonAsPopupMenu: true,
              prefixData: BluePrintAppBarPrefixData(
                prefixType: BluePrintAppBarPrefixType.back,
                onPressed: Navigator.of(context).pop,
              ),
              suffixes: [
                BluePrintAppBarSuffixData(
                  iconData: Icons.person,
                  title: "My Profile",
                  onPressed: () {},
                ),
                BluePrintAppBarSuffixData(
                  iconData: Icons.logout,
                  title: null,
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
