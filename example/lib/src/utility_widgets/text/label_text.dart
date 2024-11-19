import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

class LabelText extends StatelessWidget {
  final String title;
  final FontWeight fontWeight;

  const LabelText({
    required this.title,
    this.fontWeight = FontWeight.w400,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Text(
      title,
      style: theme.textStyle.bodySmall_400.copyWith(
        color: theme.colors.brand.onSurface,
        fontWeight: fontWeight,
      ),
    );
  }
}
