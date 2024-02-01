import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_tokens.dart';
import 'package:flutter_blueprint/design_token/colors/projects/project_branding.dart';

ColorTokens initializedWithBrand(ProjectBranding projects) {
  return ColorTokens(
    brand: ColorBrand(
      main: projects.brandColors.primary,
      error: projects.brandColors.error,
      secondary: projects.brandColors.secondary,
    ),
    interaction: ColorInteraction(
      hover: projects.brandColors.hoverColor,
      main: projects.brandColors.primary,
      pressed: projects.brandColors.hoverColor,
    ),
    neutral: projects.colorNeutral,
    messaging: projects.colorMessaging,
  );
}
