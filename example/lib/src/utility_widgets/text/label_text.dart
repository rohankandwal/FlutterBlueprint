import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

class LabelText extends StatelessWidget {
  final String title;

  const LabelText({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Text(
      title,
      style: theme.textStyle.bodySmall_400.copyWith(
        color: theme.colors.neutral.neutral50,
      ),
    );
  }
}
