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
        title: Text(title),
        iconTheme: const IconThemeData(color: Colors.white),
        actionsIconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: theme.colors.interaction.main,
        actions: const [
          // if (showThemeConfigActionItem)
          //   IconButton(
          //     onPressed: () => Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (_) => const ThemeConfigScreen(),
          //       ),
          //     ),
          //     icon: const ChardonnayIcon(Icons.style,
          //         iconSize: ChardonnayIconSize.small),
          //   ),
          // if (closable)
          //   IconButton(
          //     onPressed: () => Navigator.maybePop(context),
          //     icon: const ChardonnayIcon(Icons.close,
          //         iconSize: ChardonnayIconSize.small),
          //   ),
        ],
      ),
      body: body,
    );
  }
}
