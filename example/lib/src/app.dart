import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/screens/home_screen/home_screen.dart';
import 'package:flutter_blueprint_example/src/theme/admin/dark/admin_dark_project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/admin/light/admin_light_project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/theme_notifier.dart';
import 'package:provider/provider.dart';

class FlutterBluePrintExample extends StatelessWidget {
  const FlutterBluePrintExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter BluePrint Showcase',
            theme: ThemeData(
              extensions: [
                FlutterBluePrintThemeExtension.initWithBrandAndTextDirection(
                  branding: _getProjectBranding(value),
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
            home: const HomeScreen(),
          );
        },
      ),
    );
  }

  ProjectBranding _getProjectBranding(ThemeNotifier theme) {
    if (theme.getSelectedTheme() == Themes.adminLight) {
      return AdminProjectLightBranding();
    }
    return AdminProjectDarkBranding();
  }
}
