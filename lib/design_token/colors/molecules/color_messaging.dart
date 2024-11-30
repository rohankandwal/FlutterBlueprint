import 'package:flutter/material.dart';

abstract class ColorMessaging {
  Color get error; // = Color get Atoms.red100;
  Color get success; // = Color get Atoms.green100;
  Color get warning; // = Color get Atoms.orange100;
  Color get information; // = Color get Atoms.blue100;

  List<Color> get values => [
        error,
        success,
        warning,
        information,
      ];
}
