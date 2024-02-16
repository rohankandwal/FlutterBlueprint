import 'dart:ui';

import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint_example/src/theme/admin/light/admin_color_light_atoms.dart';

class AdminColorLightMessaging extends ColorMessaging {
  @override
  Color get error => AdminColorLightAtoms.red100;

  @override
  Color get errorLight => AdminColorLightAtoms.red400;

  @override
  Color get information => AdminColorLightAtoms.blue100;

  @override
  Color get informationLight => AdminColorLightAtoms.blue200;

  @override
  Color get success => AdminColorLightAtoms.green100;

  @override
  Color get successLight => AdminColorLightAtoms.green800;

  @override
  Color get warning => AdminColorLightAtoms.orange100;

  @override
  Color get warningLight => AdminColorLightAtoms.orange300;
}
