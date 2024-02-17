import 'dart:ui';

import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/light/sunset_color_light_atoms.dart';

class SunsetColorLightMessaging extends ColorMessaging {
  @override
  Color get error => SunsetColorLightAtoms.red100;

  @override
  Color get errorLight => SunsetColorLightAtoms.red400;

  @override
  Color get information => SunsetColorLightAtoms.blue100;

  @override
  Color get informationLight => SunsetColorLightAtoms.blue200;

  @override
  Color get success => SunsetColorLightAtoms.green100;

  @override
  Color get successLight => SunsetColorLightAtoms.green800;

  @override
  Color get warning => SunsetColorLightAtoms.orange100;

  @override
  Color get warningLight => SunsetColorLightAtoms.orange300;
}
