import 'dart:ui';

import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint_example/src/theme/admin/dark/admin_color_dark_atoms.dart';

class MaterialColorDarkMessaging extends ColorMessaging {
  @override
  Color get error => AdminColorDarkAtoms.red100;

  @override
  Color get errorLight => AdminColorDarkAtoms.red400;

  @override
  Color get information => AdminColorDarkAtoms.blue100;

  @override
  Color get informationLight => AdminColorDarkAtoms.blue200;

  @override
  Color get success => AdminColorDarkAtoms.green100;

  @override
  Color get successLight => AdminColorDarkAtoms.green800;

  @override
  Color get warning => AdminColorDarkAtoms.orange100;

  @override
  Color get warningLight => AdminColorDarkAtoms.orange300;
}
