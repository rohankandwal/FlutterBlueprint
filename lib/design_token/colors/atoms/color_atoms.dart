import 'package:flutter/material.dart';

abstract class ColorAtoms {
  /// Brightness
  Brightness get brightness;

  /// The color displayed most frequently across your app.
  Color get primary;

  /// A color that's clearly legible when drawn on [primary].
  Color? get onPrimary => null;

  /// A color used for elements needing less emphasis than [primary].
  Color? get primaryContainer => null;

  /// A color that's clearly legible when drawn on [primaryContainer].
  Color? get onPrimaryContainer => null;

  /// An accent color used for less prominent components in the UI, such as
  /// filter chips, while expanding the opportunity for color expression.
  Color? get secondary => null;

  /// A color that's clearly legible when drawn on [secondary].
  Color? get onSecondary => null;

  /// A color used for elements needing less emphasis than [secondary].
  Color? get secondaryContainer => null;

  /// A color that's clearly legible when drawn on [secondaryContainer].
  Color? get onSecondaryContainer => null;

  /// A color used as a contrasting accent that can balance [primary]
  /// and [secondary] colors or bring heightened attention to an element,
  /// such as an input field.
  Color? get tertiary => null;

  /// A color that's clearly legible when drawn on [tertiary].
  Color? get onTertiary => null;

  /// A color used for elements needing less emphasis than [tertiary].
  Color? get tertiaryContainer => null;

  /// A color that's clearly legible when drawn on [tertiaryContainer].
  Color? get onTertiaryContainer => null;

  /// The color to use for input validation errors, e.g. for
  /// [InputDecoration.errorText].
  Color? get error => null;

  /// A color that's clearly legible when drawn on [error].
  Color? get onError => null;

  /// A color used for error elements needing less emphasis than [error].
  Color? get errorContainer => null;

  /// A color that's clearly legible when drawn on [errorContainer].
  Color? get onErrorContainer => null;

  /// A color that typically appears behind scrollable content.
  Color? get background => null;

  /// A color that's clearly legible when drawn on [background].
  Color? get onBackground => null;

  /// The background color for widgets like [Card].
  Color? get surface => null;

  /// A color that's clearly legible when drawn on [surface].
  Color? get onSurface => null;

  /// A color variant of [surface] that can be used for differentiation against
  /// a component using [surface].
  Color? get surfaceVariant => null;

  /// A color that's clearly legible when drawn on [surfaceVariant].
  Color? get onSurfaceVariant => null;

  /// A utility color that creates boundaries and emphasis to improve usability.
  Color? get outline => null;

  /// A utility color that creates boundaries for decorative elements when a
  /// 3:1 contrast isn’t required, such as for dividers or decorative elements.
  Color? get outlineVariant => null;

  /// A color use to paint the drop shadows of elevated components.
  Color? get shadow => null;

  /// A color use to paint the scrim around of modal components.
  Color? get scrim => null;

  /// A surface color used for displaying the reverse of what’s seen in the
  /// surrounding UI, for example in a SnackBar to bring attention to
  /// an alert.
  Color? get inverseSurface => null;

  /// A color that's clearly legible when drawn on [inverseSurface].
  Color? get onInverseSurface => null;

  /// An accent color used for displaying a highlight color on [inverseSurface]
  /// backgrounds, like button text in a SnackBar.
  Color? get inversePrimary => null;

  /// A color used as an overlay on a surface color to indicate a component's
  /// elevation.
  Color? get surfaceTint => null;
}
