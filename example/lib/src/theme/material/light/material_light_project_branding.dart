import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_messaging.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_neutral.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/material/light/material_color_light_atoms.dart';
import 'package:flutter_blueprint_example/src/theme/material/light/material_color_light_messaging.dart';
import 'package:flutter_blueprint_example/src/theme/material/light/material_color_light_neutral.dart';

class MaterialProjectLightBranding extends ProjectBranding {
  @override
  ColorAtoms get brandColors => MaterialColorLightAtoms();

  @override
  ColorMessaging get colorMessaging => MaterialColorLightMessaging();

  @override
  ColorNeutral get colorNeutral => MaterialColorLightNeutral();
}
