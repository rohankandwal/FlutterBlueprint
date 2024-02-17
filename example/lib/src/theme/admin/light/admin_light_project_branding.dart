import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_messaging.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_neutral.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/admin/light/admin_color_light_atoms.dart';
import 'package:flutter_blueprint_example/src/theme/admin/light/admin_color_light_messaging.dart';
import 'package:flutter_blueprint_example/src/theme/admin/light/admin_color_light_neutral.dart';

class AdminProjectLightBranding extends ProjectBranding {
  @override
  ColorAtoms get brandColors => AdminColorLightAtoms();

  @override
  ColorMessaging get colorMessaging => AdminColorLightMessaging();

  @override
  ColorNeutral get colorNeutral => AdminColorLightNeutral();
}
