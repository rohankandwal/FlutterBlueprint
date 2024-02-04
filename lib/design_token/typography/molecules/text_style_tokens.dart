import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/font_family_tokens.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/font_size_tokens.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/font_weight_tokens.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/line_height_tokens.dart';
import 'package:flutter_blueprint/util/flutter_blueprint_constants.dart';

class TextStyleTokens {
  late final TextDirection _textDirection;

  late final String _fontFamily;

  late final TextStyle title1_700;
  late final TextStyle title2_700;
  late final TextStyle title3_800;
  late final TextStyle headline_800;
  late final TextStyle subHeadline_700;
  late final TextStyle body_400;
  late final TextStyle body_700;
  late final TextStyle bodySmall_400;
  late final TextStyle bodySmall_700;
  late final TextStyle caption_600;
  late final TextStyle buttonLarge_600;
  late final TextStyle buttonMedium_700;
  late final TextStyle buttonSmall_700;

  TextStyleTokens({
    required TextDirection textDirection,
  }) : _textDirection = textDirection {
    _fontFamily = FontFamilyTokens.getFontFamily(textDirection: textDirection);
    _initDefaultTextStyles(fontFamily: _fontFamily);
  }

  void _initDefaultTextStyles({required String fontFamily}) {
    title1_700 = _getTextStyle(
      debugLabel: 'title1_700',
      fontSize: FontSizeTokens.fontSize60,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight72,
    );
    title2_700 = _getTextStyle(
      debugLabel: 'title2_700',
      fontSize: FontSizeTokens.fontSize48,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight56,
    );
    title3_800 = _getTextStyle(
      debugLabel: 'title3_800',
      fontSize: FontSizeTokens.fontSize34,
      fontWeight: FontWeightTokens.fontWeight800,
      lineHeight: LineHeightTokens.lineHeight40,
    );
    headline_800 = _getTextStyle(
      debugLabel: 'headline_800',
      fontSize: FontSizeTokens.fontSize24,
      fontWeight: FontWeightTokens.fontWeight800,
      lineHeight: LineHeightTokens.lineHeight32,
    );
    subHeadline_700 = _getTextStyle(
      debugLabel: 'subHeadline_700',
      fontSize: FontSizeTokens.fontSize18,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight32,
    );
    body_400 = _getTextStyle(
      debugLabel: 'body_400',
      fontSize: FontSizeTokens.fontSize16,
      fontWeight: FontWeightTokens.fontWeight400,
      lineHeight: LineHeightTokens.lineHeight24,
    );
    body_700 = _getTextStyle(
      debugLabel: 'body_700',
      fontSize: FontSizeTokens.fontSize16,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight24,
    );
    bodySmall_400 = _getTextStyle(
      debugLabel: 'bodySmall_400',
      fontSize: FontSizeTokens.fontSize14,
      fontWeight: FontWeightTokens.fontWeight400,
      lineHeight: LineHeightTokens.lineHeight24,
    );
    bodySmall_700 = _getTextStyle(
      debugLabel: 'bodySmall_700',
      fontSize: FontSizeTokens.fontSize14,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight24,
    );
    caption_600 = _getTextStyle(
      debugLabel: 'caption_600',
      fontSize: FontSizeTokens.fontSize12,
      fontWeight: FontWeightTokens.fontWeight600,
      lineHeight: LineHeightTokens.lineHeight16,
    );
    buttonLarge_600 = _getTextStyle(
      debugLabel: 'buttonLarge_600',
      fontSize: FontSizeTokens.fontSize16,
      fontWeight: FontWeightTokens.fontWeight600,
      lineHeight: LineHeightTokens.lineHeight24,
    );
    buttonMedium_700 = _getTextStyle(
      debugLabel: 'buttonMedium_700',
      fontSize: FontSizeTokens.fontSize14,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight16,
    );
    buttonSmall_700 = _getTextStyle(
      debugLabel: 'buttonSmall_700',
      fontSize: FontSizeTokens.fontSize12,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight16,
    );

  }

  TextStyle _getTextStyle({
    required String debugLabel,
    required double fontSize,
    required FontWeight fontWeight,
    required double lineHeight,
  }) =>
      TextStyle(
        debugLabel: debugLabel,
        package: FlutterBlueprintConstants.packageName,
        fontFamily: _fontFamily,
        fontWeight: fontWeight,
        fontSize: fontSize,
        leadingDistribution: TextLeadingDistribution.even,
        height: LineHeightTokens.calculateLineHeight(
          lineHeight: lineHeight,
          fontSize: fontSize,
        ),
      );

  TextStyleTokens copyWith({TextDirection? textDirection}) =>
      TextStyleTokens(textDirection: textDirection ?? _textDirection);
}
