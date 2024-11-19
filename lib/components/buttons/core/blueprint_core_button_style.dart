import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/buttons/core/blueprint_core_button_ripple_type.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/font_size_tokens.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/line_height_tokens.dart';
import 'package:flutter_blueprint/types/material_state.dart';

class BluePrintCoreButtonStyle extends ButtonStyle {
  final bool hasLeftIcon;
  final bool hasRightIcon;
  final FlutterBluePrintThemeExtension theme;
  final Map<BluePrintMaterialState, double> Function() getButtonElevationMap;

  // todo: The shadow isn't rounded
  BluePrintCoreButtonStyle({
    required this.theme,
    required this.hasLeftIcon,
    required this.hasRightIcon,
    required super.backgroundColor,
    required super.foregroundColor,
    required this.getButtonElevationMap,
    super.side,
    final BluePrintCoreButtonRippleType splashRipple =
        BluePrintCoreButtonRippleType.ripple,
  }) : super(
          padding: WidgetStatePropertyAll(
            EdgeInsets.only(
              left: hasLeftIcon
                  ? theme.spacings.spacing16
                  : theme.spacings.spacing24,
              right: hasRightIcon
                  ? theme.spacings.spacing16
                  : theme.spacings.spacing24,
              top: theme.spacings.spacing10,
              bottom: theme.spacings.spacing10,
            ),
          ),
          textStyle: WidgetStatePropertyAll(
            theme.textStyle.buttonSmall_700.copyWith(
              height: LineHeightTokens.calculateLineHeight(
                fontSize: FontSizeTokens.fontSize14,
                lineHeight: LineHeightTokens.lineHeight20,
              ),
            ),
          ),
          elevation: WidgetStateProperty.resolveWith(
            (states) => resolveElevationMaterialState(
                materialStateColorMap: getButtonElevationMap(), states: states),
          ),
          splashFactory: splashRipple.splashFactory,
          shadowColor: WidgetStatePropertyAll(
            theme.elevations.elevationMedium.color,
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                theme.borderRadius.borderRadiusExtraLarge,
              ),
            ),
          ),
        );
}
