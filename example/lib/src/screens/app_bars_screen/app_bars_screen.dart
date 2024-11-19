import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/screens/app_bars_screen/large_app_bar_screen.dart';
import 'package:flutter_blueprint_example/src/screens/app_bars_screen/medium_app_bar_screen.dart';
import 'package:flutter_blueprint_example/src/screens/app_bars_screen/small_app_bar_screen.dart';
import 'package:flutter_blueprint_example/src/screens/app_bars_screen/start_aligned_app_bar_screen.dart';
import 'package:flutter_blueprint_example/src/screens/home_screen/widgets/design_system_category_card.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

import 'center_aligned_app_bar_screen.dart';

const _kDesignSystemCategories = [
  DesignSystemCategoryCard(
      title: 'Center Aligned AppBar', child: CenterAlignedAppBarScreen()),
  DesignSystemCategoryCard(
      title: 'Start Aligned AppBar', child: StartAlignedAppBarScreen()),
  DesignSystemCategoryCard(title: 'Small AppBar', child: SmallAppBarScreen()),
  DesignSystemCategoryCard(title: 'Medium AppBar', child: MediumAppBarScreen()),
  DesignSystemCategoryCard(title: 'Large AppBar', child: LargeAppBarScreen()),
];

class AppBarsScreen extends StatelessWidget {
  const AppBarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final cardSpacing = theme.spacings.spacing16;

    return CustomScaffold(
      title: 'Home',
      showThemeConfigActionItem: true,
      body: ListView.builder(
        padding: EdgeInsetsDirectional.only(
          bottom: theme.spacings.spacing40,
          top: theme.spacings.spacing24,
        ),
        itemCount: _kDesignSystemCategories.length,
        itemBuilder: (context, index) => Column(
          children: [
            _kDesignSystemCategories[index],
            SizedBox(height: cardSpacing),
          ],
        ),
      ),
    );
  }
}
