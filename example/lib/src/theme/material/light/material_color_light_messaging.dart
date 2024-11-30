import 'dart:ui';

import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint_example/src/theme/admin/light/admin_color_light_atoms.dart';

class MaterialColorLightMessaging extends ColorMessaging {
  @override
  Color get error => AdminColorLightAtoms.red400;

  @override
  Color get information => AdminColorLightAtoms.blue200;

  @override
  Color get success => AdminColorLightAtoms.green800;

  @override
  Color get warning => AdminColorLightAtoms.orange300;
}
