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
