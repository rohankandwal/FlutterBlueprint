import 'package:flutter/material.dart';

class ScrollableRowWidget extends StatelessWidget {
  final List<Widget> children;

  const ScrollableRowWidget({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: children,
      ),
    );
  }
}
