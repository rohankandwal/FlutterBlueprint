import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/screens/app_bars_screen/app_bars_screen.dart';
import 'package:flutter_blueprint_example/src/screens/colors_screen/colors_screen.dart';
import 'package:flutter_blueprint_example/src/screens/home_screen/widgets/design_system_category_card.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

/// This should hold all the design system categories with corresponding screens.
const _kDesignSystemCategories = [
  // DesignSystemCategoryCard(title: 'Components', child: ComponentsScreen()),
  // DesignSystemCategoryCard(title: 'Typography', child: TypographyScreen()),
  DesignSystemCategoryCard(title: 'Colors', child: ColorsScreen()),
  DesignSystemCategoryCard(title: 'AppBars', child: AppBarsScreen()),
];

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final cardSpacing = theme.spacings.spacing16;

    return CustomScaffold(
      title: 'Theme : $title',
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
