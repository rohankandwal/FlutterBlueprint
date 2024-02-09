import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

class CheckBoxesScreen extends StatefulWidget {
  const CheckBoxesScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxesScreen> createState() => _CheckBoxesScreenState();
}

class _CheckBoxesScreenState extends State<CheckBoxesScreen> {
  bool? isChecked1 = true;

  bool? isChecked2 = true;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return CustomScaffold(
      title: 'Colors',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: theme.spacings.spacing16,
            vertical: theme.spacings.spacing24,
          ),
          child: Column(
            children: [
              BlueprintCheckBox(
                value: isChecked1,
                onChange: (value) {
                  setState(() {
                    isChecked1 = value;
                  });
                },
                tristate: false,
              ),
              BlueprintCheckBox(
                value: isChecked2,
                onChange: (value) {
                  setState(() {
                    isChecked2 = value;
                  });
                },
                tristate: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
