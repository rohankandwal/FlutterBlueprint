import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/cards/core/blueprint_card_type.dart';
import 'package:flutter_blueprint/components/cards/core/blueprint_core_card.dart';

class BluePrintFilledCard extends StatelessWidget {
  final Widget? child;

  const BluePrintFilledCard({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BluePrintCoreCard(
      cardType: BluePrintCardType.filled,
      child: child,
    );
  }
}
