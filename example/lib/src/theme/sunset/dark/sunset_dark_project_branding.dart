import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_messaging.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_neutral.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/dark/sunset_color_dark_atoms.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/dark/sunset_color_dark_messaging.dart';
import 'package:flutter_blueprint_example/src/theme/sunset/dark/sunset_color_dark_neutral.dart';

class SunsetProjectDarkBranding extends ProjectBranding {
  @override
  ColorAtoms get brandColors => SunsetColorDarkAtoms();

  @override
  ColorMessaging get colorMessaging => SunsetColorDarkMessaging();

  @override
  ColorNeutral get colorNeutral => SunsetColorDarkNeutral();
}
