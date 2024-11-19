import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/cards/cards.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

class ElevatedCardScreen extends StatelessWidget {
  const ElevatedCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return CustomScaffold(
      title: 'Elevated Card',
      showThemeConfigActionItem: true,
      body: SizedBox(
        width: double.infinity,
        height: 100,
        child: BluePrintElevatedCard(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "data",
                style: TextStyle(
                  color: theme.colors.brand.onSurface,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
