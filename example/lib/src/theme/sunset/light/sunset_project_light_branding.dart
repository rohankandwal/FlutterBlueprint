import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_messaging.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_neutral.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/light/sunset_color_light_atoms.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/light/sunset_color_light_messaging.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/light/sunset_color_light_neutral.dart';

class SunsetProjectLightBranding extends ProjectBranding {
  @override
  ColorAtoms get brandColors => SunsetColorLightAtoms();

  @override
  ColorMessaging get colorMessaging => SunsetColorLightMessaging();

  @override
  ColorNeutral get colorNeutral => SunsetColorLightNeutral();
}
