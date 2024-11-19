import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

/// Creates a horizontally scrollable, linear array of widgets that are created on demand.
class HorizontalScrollListBuilder extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final ScrollController? controller;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;
  final bool? shrinkWrap;

  const HorizontalScrollListBuilder({
    required this.itemCount,
    required this.itemBuilder,
    this.controller,
    this.physics = const BouncingScrollPhysics(),
    this.padding,
    this.shrinkWrap = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ListView.builder(
      controller: controller,
      shrinkWrap: shrinkWrap!,
      physics: physics,
      padding: padding ??
          EdgeInsetsDirectional.symmetric(horizontal: theme.spacings.spacing16),
      scrollDirection: Axis.horizontal,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
