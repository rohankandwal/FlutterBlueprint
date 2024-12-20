import 'package:flutter/cupertino.dart';

class ElevationToken {
  final double xOffset;
  final double yOffset;
  final double blurRadius;
  final double spreadRadius;
  final double opacity;
  final Color color;
  final double elevation;

  ElevationToken({
    required this.xOffset,
    required this.yOffset,
    required this.blurRadius,
    required this.opacity,
    required this.color,
    required this.spreadRadius,
    required this.elevation,
  });

  BoxShadow getBoxShadow() => BoxShadow(
        color: color.withOpacity(opacity),
        blurRadius: blurRadius,
        spreadRadius: spreadRadius,
        offset: Offset(xOffset, yOffset),
      );
}
