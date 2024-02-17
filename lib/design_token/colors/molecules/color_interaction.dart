import 'package:flutter/material.dart';

class ColorInteraction {
  final Color main;
  final Color hover;
  final Color pressed;
  final Color splash;

  ColorInteraction({
    required this.main,
    required this.hover,
    required this.pressed,
    required this.splash,
  });

  ColorInteraction lerp(ColorInteraction? other, double t) {
    return ColorInteraction(
      main: Color.lerp(main, other?.main, t)!,
      hover: Color.lerp(hover, other?.hover, t)!,
      pressed: Color.lerp(pressed, other?.pressed, t)!,
      splash: Color.lerp(splash, other?.splash, t)!,
    );
  }

  List<Color> get values => [
        main,
        hover,
        pressed,
        splash,
      ];
}
