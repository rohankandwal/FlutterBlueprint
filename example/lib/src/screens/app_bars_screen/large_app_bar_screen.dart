import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/text/label_text.dart';

class LargeAppBarScreen extends StatelessWidget {
  const LargeAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return CustomScaffold(
      title: "Large Appbars",
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const LabelText(
                title:
                    "Large Appbar with center title and suffix action *required CustomScrollView"),
            SizedBox(
              height: 400,
              child: CustomScrollView(
                slivers: [
                  BlueprintLargeAppBar(
                    title: "title",
                    theme: theme,
                    centerTitle: true,
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
                  SliverToBoxAdapter(
                    child: Container(
                      height: 50,
                      color: theme.colors.brand.primary,
                    ),
                  ),
                  SliverFillRemaining(
                    child: Container(
                      color: theme.colors.brand.secondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const LabelText(
                title:
                    "Large Appbar with start title and PopUp Menu *required CustomScrollView"),
            SizedBox(
              height: 400,
              child: CustomScrollView(
                slivers: [
                  BlueprintLargeAppBar(
                    title: "title",
                    theme: theme,
                    centerTitle: false,
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
                  SliverToBoxAdapter(
                    child: Container(
                      height: 50,
                      color: theme.colors.brand.primary,
                    ),
                  ),
                  SliverFillRemaining(
                    child: Container(
                      color: theme.colors.brand.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
