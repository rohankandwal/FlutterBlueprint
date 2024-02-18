import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/text/label_text.dart';

class DividerScreen extends StatelessWidget {
  const DividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return CustomScaffold(
      title: 'Dividers',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: theme.spacings.spacing16,
            vertical: theme.spacings.spacing24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LabelText(
                title: "Horizontal",
                fontWeight: FontWeight.w800,
              ),
              SizedBox(
                height: theme.spacings.spacing10,
              ),
              const LabelText(title: "Small Divider"),
              BluePrintSmallDivider(
                spacing: theme.spacings.spacing8,
              ),
              const LabelText(title: "Medium Divider"),
              BluePrintMediumDivider(
                spacing: theme.spacings.spacing8,
              ),
              const LabelText(title: "Large Divider"),
              BluePrintLargeDivider(
                spacing: theme.spacings.spacing8,
              ),
              const LabelText(
                title:
                    "xLarge Divider with custom color and start and end indent",
              ),
              BluePrintXLargeDivider(
                spacing: theme.spacings.spacing16,
                color: theme.colors.brand.primary,
                startIndent: theme.spacings.spacing4,
                endIndent: theme.spacings.spacing4,
              ),
              const SizedBox(
                height: 50,
              ),
              const LabelText(
                title: "Vertical",
                fontWeight: FontWeight.w800,
              ),
              SizedBox(
                height: theme.spacings.spacing10,
              ),
              const LabelText(title: "Small Divider"),
              SizedBox(
                height: 50,
                child: BluePrintSmallDivider(
                  orientation: BluePrintDividerOrientation.vertical,
                  spacing: theme.spacings.spacing8,
                ),
              ),
              const LabelText(title: "Medium Divider"),
              SizedBox(
                height: 50,
                child: BluePrintMediumDivider(
                  orientation: BluePrintDividerOrientation.vertical,
                  spacing: theme.spacings.spacing8,
                ),
              ),
              const LabelText(title: "Large Divider"),
              const SizedBox(
                height: 50,
                child: BluePrintLargeDivider(
                  orientation: BluePrintDividerOrientation.vertical,
                ),
              ),
              const LabelText(title: "xLarge Divider"),
              const SizedBox(
                height: 50,
                child: BluePrintXLargeDivider(
                  orientation: BluePrintDividerOrientation.vertical,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
