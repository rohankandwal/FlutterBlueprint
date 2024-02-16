import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_messaging.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_neutral.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';
import 'package:flutter_blueprint_example/src/theme/admin/dark/admin_color_dark_atoms.dart';
import 'package:flutter_blueprint_example/src/theme/admin/dark/admin_color_dark_messaging.dart';
import 'package:flutter_blueprint_example/src/theme/admin/dark/admin_color_dark_neutral.dart';

class AdminProjectDarkBranding extends ProjectBranding {
  @override
  ColorAtoms get brandColors => AdminColorDarkAtoms();

  @override
  ColorMessaging get colorMessaging => AdminColorDarkMessaging();

  @override
  ColorNeutral get colorNeutral => AdminColorDarkNeutral();
}
