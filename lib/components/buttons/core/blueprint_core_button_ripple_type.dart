import 'package:flutter/material.dart';

enum BluePrintCoreButtonRippleType {
  ripple(InkSplash.splashFactory),
  none(NoSplash.splashFactory);

  const BluePrintCoreButtonRippleType(this.splashFactory);

  final InteractiveInkFeatureFactory splashFactory;
}
