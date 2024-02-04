import 'dart:ui';

import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint_example/src/theme/admin_color_atoms.dart';

class AdminColorMessaging extends ColorMessaging {
  @override
  Color get error => AdminColorAtoms.red100;

  @override
  Color get errorLight => AdminColorAtoms.red400;

  @override
  Color get information => AdminColorAtoms.blue100;

  @override
  Color get informationLight => AdminColorAtoms.blue200;

  @override
  Color get success => AdminColorAtoms.green100;

  @override
  Color get successLight => AdminColorAtoms.green800;

  @override
  Color get warning => AdminColorAtoms.orange100;

  @override
  Color get warningLight => AdminColorAtoms.orange300;
}
