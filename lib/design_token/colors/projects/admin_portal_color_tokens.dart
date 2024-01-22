import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';
import 'package:flutter_blueprint/design_token/colors/colors.dart';
import 'package:flutter_blueprint/design_token/colors/molecules/color_tokens.dart';

class AdminPortalColorTokens extends ColorTokens {
  AdminPortalColorTokens()
      : super(
          brand: ColorBrand(
            main: ColorAtoms.red600,
            dark: ColorAtoms.red800,
            secondary: ColorAtoms.blue200,
          ),
          interaction: ColorInteraction(
            main: ColorAtoms.red600,
            hover: ColorAtoms.red800,
            pressed: ColorAtoms.red1200,
          ),
          neutral: ColorNeutral(),
          messaging: ColorMessaging(),
        );
}
