import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/font_family_tokens.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/font_size_tokens.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/font_weight_tokens.dart';
import 'package:flutter_blueprint/design_token/typography/atoms/line_height_tokens.dart';
import 'package:flutter_blueprint/util/flutter_blueprint_constants.dart';

class TextStyleTokens {
  TextStyleTokens._();

  late final TextDirection _textDirection;

  late final String _fontFamily;

  late final TextStyle heading1_700;
  late final TextStyle heading2_700;
  late final TextStyle heading3_700;
  late final TextStyle heading3_500;

  late final TextStyle paragraph_700;
  late final TextStyle paragraph_500;
  late final TextStyle paragraph_400;

  late final TextStyle secondary_700;
  late final TextStyle secondary_500;
  late final TextStyle secondary_400;

  late final TextStyle caption_700;
  late final TextStyle caption_400;

  late final TextStyle buttonText;
  late final TextStyle pageTitleMobile;
  late final TextStyle sectionTitleMobile;
  late final TextStyle sectionSubtitleMobile;

  TextStyleTokens({
    required TextDirection textDirection,
  }) : _textDirection = textDirection {
    _fontFamily = FontFamilyTokens.getFontFamily(textDirection: textDirection);
    _initDefaultTextStyles(fontFamily: _fontFamily);
  }

  void _initDefaultTextStyles({required String fontFamily}) {
    heading1_700 = _getTextStyle(
      debugLabel: 'heading1_700',
      fontSize: FontSizeTokens.fontSize40,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight48,
    );
    heading2_700 = _getTextStyle(
      debugLabel: 'heading2_700',
      fontSize: FontSizeTokens.fontSize28,
      fontWeight: FontWeightTokens.fontWeight700,
      lineHeight: LineHeightTokens.lineHeight32,
    );

    // todo do rest based on UI
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

  TextStyleTokens copyWith({TextDirection? textDirection}) => TextStyleTokens(textDirection: textDirection ?? _textDirection);
}
