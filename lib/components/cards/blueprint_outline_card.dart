import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/cards/core/blueprint_card_type.dart';
import 'package:flutter_blueprint/components/cards/core/blueprint_core_card.dart';

class BluePrintOutlineCard extends StatelessWidget {
  final Widget? child;

  const BluePrintOutlineCard({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BluePrintCoreCard(
      cardType: BluePrintCardType.outlined,
      child: child,
    );
  }
}
