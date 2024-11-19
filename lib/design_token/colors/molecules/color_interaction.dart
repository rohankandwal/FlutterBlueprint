import 'package:flutter/material.dart';

class ColorInteraction {
  final Color main;
  final Color hover;
  final Color pressed;
  final Color splash;
  final Color focused;
  final Color disabledColor;

  ColorInteraction({
    required this.main,
    required this.hover,
    required this.pressed,
    required this.splash,
    required this.focused,
    required this.disabledColor,
  });

  ColorInteraction lerp(ColorInteraction? other, double t) {
    return ColorInteraction(
      main: Color.lerp(main, other?.main, t)!,
      hover: Color.lerp(hover, other?.hover, t)!,
      pressed: Color.lerp(pressed, other?.pressed, t)!,
      splash: Color.lerp(splash, other?.splash, t)!,
      focused: Color.lerp(focused, other?.focused, t)!,
      disabledColor: Color.lerp(disabledColor, other?.disabledColor, t)!,
    );
  }

  List<Color> get values => [
        main,
        hover,
        pressed,
        splash,
        focused,
        disabledColor,
      ];
}
