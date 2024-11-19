import 'package:flutter/material.dart';

abstract class ColorMessaging {
  Color get error; // = Color get Atoms.red100;
  Color get errorLight; // = Color get Atoms.red400;
  Color get success; // = Color get Atoms.green100;
  Color get successLight; // = Color get Atoms.green800;
  Color get warning; // = Color get Atoms.orange100;
  Color get warningLight; // = Color get Atoms.orange300;
  Color get information; // = Color get Atoms.blue100;
  Color get informationLight; // = Color get Atoms.blue200;

  List<Color> get values => [
        error,
        errorLight,
        success,
        successLight,
        warning,
        warningLight,
        information,
        informationLight,
      ];
}
