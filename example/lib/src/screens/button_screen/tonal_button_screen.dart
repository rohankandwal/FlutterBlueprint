import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/layout/scrollable_row_widget.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';

class TonalButtonScreen extends StatelessWidget {
  const TonalButtonScreen({super.key});

  @override
  Widget build(BuildContext conTonal) {
    final theme = conTonal.theme;

    return CustomScaffold(
      title: "Tonal Button",
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
                BluePrintTonalButton(
                  label: 'Tonal Button',
                  onPressed: () {},
                ),
                SizedBox(
                  width: theme.spacings.spacing4,
                ),
                const BluePrintTonalButton(
                  label: 'Tonal Button Disabled',
                ),
              ],
            ),
            SizedBox(
              height: theme.spacings.spacing4,
            ),
            ScrollableRowWidget(
              children: [
                BluePrintTonalButton(
                  label: 'Tonal Button with left icon',
                  leftIcon: Icons.add,
                  onPressed: () {},
                ),
                SizedBox(
                  width: theme.spacings.spacing4,
                ),
                const BluePrintTonalButton(
                  label: 'Tonal Button with left icon Disabled',
                  leftIcon: Icons.add,
                ),
              ],
            ),
            SizedBox(
              height: theme.spacings.spacing4,
            ),
            ScrollableRowWidget(
              children: [
                BluePrintTonalButton(
                  label: 'Tonal Button with right icon',
                  rightIcon: Icons.add,
                  onPressed: () {},
                ),
                SizedBox(
                  width: theme.spacings.spacing4,
                ),
                const BluePrintTonalButton(
                  label: 'Tonal Button with right icon Disabled',
                  rightIcon: Icons.add,
                ),
              ],
            ),
            SizedBox(
              height: theme.spacings.spacing4,
            ),
            ScrollableRowWidget(
              children: [
                BluePrintTonalButton(
                  label: 'Tonal Button with left and right icon',
                  rightIcon: Icons.add,
                  leftIcon: Icons.add,
                  onPressed: () {},
                ),
                SizedBox(
                  width: theme.spacings.spacing4,
                ),
                const BluePrintTonalButton(
                  label: 'Tonal Button with left and right icon Disabled',
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
