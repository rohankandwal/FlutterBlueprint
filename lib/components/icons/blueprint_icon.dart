import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/icons/types/blueprint_icon_size.dart';

class BluePrintIcon extends StatelessWidget {
  final IconData iconData;
  final BluePrintIconSize iconSize;
  final Color? color;

  const BluePrintIcon({
    required this.iconData,
    required this.iconSize,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: iconSize.size,
      color: color,
    );
  }
}
