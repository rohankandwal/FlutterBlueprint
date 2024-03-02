import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/screens/button_screen/filled_button_screen.dart';
import 'package:flutter_blueprint_example/src/screens/button_screen/outlined_button_screen.dart';
import 'package:flutter_blueprint_example/src/screens/button_screen/text_button_screen.dart';
import 'package:flutter_blueprint_example/src/screens/home_screen/widgets/design_system_category_card.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

const _kDesignSystemCategories = [
  DesignSystemCategoryCard(
    title: 'Filled Button',
    child: FilledButtonScreen(),
  ),
  DesignSystemCategoryCard(
    title: 'Outlined Button',
    child: OutlinedButtonScreen(),
  ),
  DesignSystemCategoryCard(
    title: 'Text Button',
    child: TextButtonScreen(),
  ),
];

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final cardSpacing = theme.spacings.spacing16;

    return CustomScaffold(
      title: 'Buttons',
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
