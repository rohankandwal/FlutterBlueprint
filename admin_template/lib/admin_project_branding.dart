import 'package:admin_template/admin_color_atoms.dart';
import 'package:admin_template/admin_color_messaging.dart';
import 'package:admin_template/admin_color_neutral.dart';
import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_messaging.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_neutral.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';

class AdminProjectBranding extends ProjectBranding {

  @override
  ColorAtoms get brandColors => AdminColorAtoms();

  @override
  ColorMessaging get colorMessaging => AdminColorMessaging();

  @override
  ColorNeutral get colorNeutral => AdminColorNeutral();

}