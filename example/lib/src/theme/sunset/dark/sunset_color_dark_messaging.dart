import 'dart:ui';

import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint_example/src/theme/Sunset/dark/Sunset_color_dark_atoms.dart';

class SunsetColorDarkMessaging extends ColorMessaging {
  @override
  Color get error => SunsetColorDarkAtoms.red100;

  @override
  Color get errorLight => SunsetColorDarkAtoms.red400;

  @override
  Color get information => SunsetColorDarkAtoms.blue100;

  @override
  Color get informationLight => SunsetColorDarkAtoms.blue200;

  @override
  Color get success => SunsetColorDarkAtoms.green100;

  @override
  Color get successLight => SunsetColorDarkAtoms.green800;

  @override
  Color get warning => SunsetColorDarkAtoms.orange100;

  @override
  Color get warningLight => SunsetColorDarkAtoms.orange300;
}
