import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/app_bars/common/blueprint_app_bar_utility.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/text/label_text.dart';

class AppBarsScreen extends StatelessWidget {
  const AppBarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return CustomScaffold(
      title: "Appbars",
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
            const LabelText(title: "Start Aligned Appbar with suffix action"),
            BluePrintStartAlignedAppBar(
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
                title: "Start Aligned Appbar with suffix action in PopUp Menu"),
            BluePrintStartAlignedAppBar(
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
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const LabelText(
                title:
                    "Small Appbar with start title with suffix action *required Slivers"),
            SizedBox(
              height: 400,
              child: CustomScrollView(
                slivers: [
                  BlueprintSmallAppBar(
                    title: "title",
                    theme: theme,
                    centerTitle: true,
                    showActionButtonAsPopupMenu: false,
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
                      color: theme.colors.brand.main,
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
                    "Small Appbar with center title and PopUp Menu *required Slivers"),
            SizedBox(
              height: 400,
              child: CustomScrollView(
                slivers: [
                  BlueprintSmallAppBar(
                    title: "title",
                    theme: theme,
                    centerTitle: true,
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
                      color: theme.colors.brand.main,
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
                      color: theme.colors.brand.main,
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
                      color: theme.colors.brand.main,
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
                    "Medium Appbar with center title and suffix action *required CustomScrollView"),
            SizedBox(
              height: 400,
              child: CustomScrollView(
                slivers: [
                  BlueprintMediumAppBar(
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
                      color: theme.colors.brand.main,
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
                    "Medium Appbar with start title and PopUp Menu *required CustomScrollView"),
            SizedBox(
              height: 400,
              child: CustomScrollView(
                slivers: [
                  BlueprintMediumAppBar(
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
                      color: theme.colors.brand.main,
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
