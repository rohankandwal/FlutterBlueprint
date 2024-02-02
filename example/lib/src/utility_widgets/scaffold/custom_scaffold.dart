import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool showThemeConfigActionItem;
  final bool closable;
  final Color? alternativeBackgroundColor;

  const CustomScaffold({
    required this.body,
    this.title = '',
    this.showThemeConfigActionItem = false,
    this.closable = false,
    super.key,
    this.alternativeBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      backgroundColor: alternativeBackgroundColor ?? theme.colors.neutral.neutral0,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: !closable,
        title: Text(
          title,
          style: theme.textStyle.subHeadline_700.copyWith(
            color: theme.colors.neutral.neutral90,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actionsIconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: theme.colors.neutral.neutral10,
        actions: const [],
      ),
      body: body,
    );
  }
}
