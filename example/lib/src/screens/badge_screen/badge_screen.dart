import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/text/label_text.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return CustomScaffold(
      title: 'Badges',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: theme.spacings.spacing16,
            vertical: theme.spacings.spacing24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const LabelText(title: "Badge with No text"),
              SizedBox(
                width: 22,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: const BluePrintBadge(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing20,
              ),
              const LabelText(title: "Badge with counter"),
              SizedBox(
                width: 20,
                height: 20,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: const BluePrintBadge(badgeCount: 0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing4,
              ),
              SizedBox(
                width: 26,
                height: 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: BluePrintBadge(
                        badgeCount: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing4,
              ),
              SizedBox(
                width: 30,
                height: 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: BluePrintBadge(
                        badgeCount: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing4,
              ),
              SizedBox(
                width: 34,
                height: 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: BluePrintBadge(
                        badgeCount: 123,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing4,
              ),
              SizedBox(
                width: 36,
                height: 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: BluePrintBadge(
                        badgeCount: 1230,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing4,
              ),
              SizedBox(
                width: 36,
                height: 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: BluePrintBadge(
                        badgeCount: 12300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing4,
              ),
              SizedBox(
                width: 36,
                height: 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: BluePrintBadge(
                        badgeCount: 123000,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing4,
              ),
              SizedBox(
                width: 40,
                height: 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(
                        Icons.notifications,
                        color: theme.colors.brand.primary,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                      child: BluePrintBadge(
                        badgeCount: 1230000,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
