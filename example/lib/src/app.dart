import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/theme_notifier.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/screens/home_screen/home_screen.dart';
import 'package:flutter_blueprint_example/src/theme/admin/dark/admin_dark_project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/admin/light/admin_light_project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/dark/sunset_dark_project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/light/sunset_project_light_branding.dart';
import 'package:provider/provider.dart';

const themes = [
  "Admin Light",
  "Admin Dark",
  "Sunset Light",
  "Sunset Dark",
];

class FlutterBluePrintExample extends StatelessWidget {
  const FlutterBluePrintExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(
        themes: [
          "Admin Light",
          "Admin Dark",
          "Sunset Light",
          "Sunset Dark",
        ],
      ),
      child: Consumer<ThemeNotifier>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Blueprint Design System",
            theme: ThemeData(
              extensions: [
                FlutterBluePrintThemeExtension.initWithBrandAndTextDirection(
                  branding: _getProjectBranding(value),
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
            home: HomeScreen(title: value.getSelectedTheme()),
          );
        },
      ),
    );
  }

  ProjectBranding _getProjectBranding(ThemeNotifier theme) {
    if (theme.getSelectedTheme() == themes[0]) {
      return AdminProjectLightBranding();
    } else if (theme.getSelectedTheme() == themes[1]) {
      return AdminProjectDarkBranding();
    } else if (theme.getSelectedTheme() == themes[2]) {
      return SunsetProjectDarkBranding();
    }
    return SunsetProjectLightBranding();
  }
}
