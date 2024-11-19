import 'package:flutter/material.dart';

abstract class ColorNeutral {
  Color transparent = Colors.transparent;

  Color get neutral0;
  Color get neutral10;
  Color get neutral20;
  Color get neutral30;
  Color get neutral40;
  Color get neutral50;
  Color get neutral60;
  Color get neutral70;
  Color get neutral80;
  Color get neutral90;
  Color get neutral100;

  List<Color> get values => [
        neutral0,
        neutral10,
        neutral20,
        neutral30,
        neutral40,
        neutral50,
        neutral60,
        neutral70,
        neutral80,
        neutral90,
        neutral100,
      ];
}
