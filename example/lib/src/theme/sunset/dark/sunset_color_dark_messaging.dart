import 'dart:ui';

import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/dark/sunset_color_dark_atoms.dart';

class SunsetColorDarkMessaging extends ColorMessaging {
  @override
  Color get error => SunsetColorDarkAtoms.red100;

  @override
  Color get information => SunsetColorDarkAtoms.blue100;

  @override
  Color get success => SunsetColorDarkAtoms.green100;

  @override
  Color get warning => SunsetColorDarkAtoms.orange100;
}
