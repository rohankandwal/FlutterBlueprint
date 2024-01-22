import 'package:flutter/material.dart';

class ColorInteraction {
  final Color main;
  final Color hover;
  final Color pressed;

  ColorInteraction({
    required this.main,
    required this.hover,
    required this.pressed,
  });

  ColorInteraction lerp(ColorInteraction? other, double t) {
    return ColorInteraction(
      main: Color.lerp(main, other?.main, t)!,
      hover: Color.lerp(hover, other?.main, t)!,
      pressed: Color.lerp(pressed, other?.main, t)!,
    );
  }
}
