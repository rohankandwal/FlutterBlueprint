import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/layout/scrollable_row_widget.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

class ContainedButtonScreen extends StatelessWidget {
  const ContainedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return CustomScaffold(
      title: "Center Appbars",
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: theme.spacings.spacing8,
          horizontal: theme.spacings.spacing4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScrollableRowWidget(
              children: [
                BluePrintFilledButton(
                  label: 'Filled Button',
                  onPressed: () {},
                ),
                SizedBox(
                  width: theme.spacings.spacing4,
                ),
                const BluePrintFilledButton(
                  label: 'Filled Button Disabled',
                ),
              ],
            ),
            SizedBox(
              height: theme.spacings.spacing4,
            ),
            ScrollableRowWidget(
              children: [
                BluePrintFilledButton(
                  label: 'Filled Button with left icon',
                  leftIcon: Icons.add,
                  onPressed: () {},
                ),
                SizedBox(
                  width: theme.spacings.spacing4,
                ),
                const BluePrintFilledButton(
                  label: 'Filled Button with left icon Disabled',
                  leftIcon: Icons.add,
                ),
              ],
            ),
            SizedBox(
              height: theme.spacings.spacing4,
            ),
            ScrollableRowWidget(
              children: [
                BluePrintFilledButton(
                  label: 'Filled Button with right icon',
                  rightIcon: Icons.add,
                  onPressed: () {},
                ),
                SizedBox(
                  width: theme.spacings.spacing4,
                ),
                const BluePrintFilledButton(
                  label: 'Filled Button with right icon Disabled',
                  rightIcon: Icons.add,
                ),
              ],
            ),
            SizedBox(
              height: theme.spacings.spacing4,
            ),
            ScrollableRowWidget(
              children: [
                BluePrintFilledButton(
                  label: 'Filled Button with left and right icon',
                  rightIcon: Icons.add,
                  leftIcon: Icons.add,
                  onPressed: () {},
                ),
                SizedBox(
                  width: theme.spacings.spacing4,
                ),
                const BluePrintFilledButton(
                  label: 'Filled Button with left and right icon Disabled',
                  rightIcon: Icons.add,
                  leftIcon: Icons.add,
                ),
              ],
            ),
            // SizedBox(
            //   height: theme.spacings.spacing4,
            // ),
          ],
        ),
      ),
    );
  }
}
