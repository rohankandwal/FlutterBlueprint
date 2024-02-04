import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/screens/home_screen/home_screen.dart';
import 'package:flutter_blueprint_example/src/theme/admin_project_branding.dart';

class FlutterBluePrintExample extends StatelessWidget {
  const FlutterBluePrintExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BluePrint Showcase',
      theme: ThemeData(
        extensions: [
          FlutterBluePrintThemeExtension.initWithBrandAndTextDirection(
            branding: AdminProjectBranding(),
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
      home: const HomeScreen(),
    );
  }
}
