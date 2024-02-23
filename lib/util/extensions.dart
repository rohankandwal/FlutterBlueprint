import 'package:flutter/material.dart';
import 'package:flutter_blueprint/design_token/flutter_blueprint_theme_extension.dart';
import 'package:intl/intl.dart' as intl;

/// Extension to provide direct theme access via [BuildContext]
/// Usage :- final theme = context.theme
extension FlutterBlueprintThemeContextExtension on BuildContext {
  FlutterBluePrintThemeExtension get theme =>
      Theme.of(this).extension<FlutterBluePrintThemeExtension>()!;
}

/// Extension to provide direct text direction access via [BuildContext]
/// Usage :- final textDirection = context.getCurrentTextDirection()
extension TextDirectionContextExtension on BuildContext {
  TextDirection get direction {
    if (intl.Bidi.isRtlLanguage(Localizations.localeOf(this).languageCode)) {
      return TextDirection.rtl;
    }
    return TextDirection.ltr;
  }
}

extension IntlFormatting on num {
  String toFormattingNumbers() {
    final number = this;
    if (number.abs() >= 1000000000000) {
      return '${removeDecimalIfInteger(number / 1000000000000)}T';
    } else if (number.abs() >= 1000000000) {
      return '${removeDecimalIfInteger(number / 1000000000)}B';
    } else if (number.abs() >= 1000000) {
      return '${removeDecimalIfInteger(number / 1000000)}M';
    } else if (number.abs() >= 1000) {
      return '${removeDecimalIfInteger(number / 1000)}K';
    } else {
      return number.toString();
    }
  }

  String removeDecimalIfInteger(num number) {
    String str = number.toString();
    if (str.endsWith('.0')) {
      return str.substring(0, str.length - 2);
    } else {
      return str;
    }
  }
}
