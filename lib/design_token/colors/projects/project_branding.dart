import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/colors.dart';

abstract class ProjectBranding {
  ColorAtoms get brandColors;

  ColorMessaging get colorMessaging;

  ColorNeutral get colorNeutral;
}
