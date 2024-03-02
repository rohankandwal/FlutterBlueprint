import 'dart:ui';

import 'package:flutter_blueprint/design_token/colors/atoms/color_atoms.dart';

class MaterialColorDarkAtoms extends ColorAtoms {
  @override
  Color get primary => const Color(0xFFD0BCFF);

  @override
  Brightness get brightness => Brightness.dark;
}
