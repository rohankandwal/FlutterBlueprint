import 'package:flutter/cupertino.dart';

/// [back] shows [Icons.arrow_back_outlined]
/// [cross] shows [Icons.close_outlined]
enum BluePrintAppBarPrefixType {
  back,
  cross,
}

class BluePrintAppBarPrefixData {
  final BluePrintAppBarPrefixType prefixType;
  final Function()? onPressed;

  BluePrintAppBarPrefixData({
    required this.prefixType,
    this.onPressed,
  });
}

class BluePrintAppBarSuffixData {
  final IconData? iconData;
  final String? title;
  final Function()? onPressed;
  final Color? color;

  BluePrintAppBarSuffixData({
    required this.iconData,
    required this.title,
    this.onPressed,
    this.color,
  });
}
