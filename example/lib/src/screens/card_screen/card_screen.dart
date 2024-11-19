import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/screens/card_screen/elevated_card_screen.dart';
import 'package:flutter_blueprint_example/src/screens/card_screen/filled_card_screen.dart';
import 'package:flutter_blueprint_example/src/screens/card_screen/outline_card_screen.dart';
import 'package:flutter_blueprint_example/src/screens/home_screen/widgets/design_system_category_card.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

const _kDesignSystemCategories = [
  DesignSystemCategoryCard(
    title: 'Outline Card',
    child: OutlineCardScreen(),
  ),
  DesignSystemCategoryCard(
    title: 'Elevated Card',
    child: ElevatedCardScreen(),
  ),
  DesignSystemCategoryCard(
    title: 'Filled Card',
    child: FilledCardScreen(),
  ),
];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final cardSpacing = theme.spacings.spacing16;

    return CustomScaffold(
      title: 'Cards',
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
