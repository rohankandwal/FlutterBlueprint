import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/cards/core/blueprint_card_type.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint/util/blueprint_focus_mouse_region.dart';

class BluePrintCoreCard extends StatefulWidget {
  final BluePrintCardType cardType;
  final Widget? child;

  const BluePrintCoreCard({
    required this.cardType,
    this.child,
    super.key,
  });

  @override
  State<BluePrintCoreCard> createState() => _BluePrintCoreCardState();
}

class _BluePrintCoreCardState extends State<BluePrintCoreCard> {
  final ValueNotifier<Color?> _cardColorNotifier = ValueNotifier<Color?>(null);

  FocusMouseRegionState _currentState = FocusMouseRegionState.normal;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return BluePrintFocusMouseRegion(
      onStateChanged: (state) {
        _currentState = state;
        _cardColorNotifier.value = _getCardColor(
          state,
          theme,
        );
      },
      child: ValueListenableBuilder(
        valueListenable: _cardColorNotifier,
        builder: (BuildContext context, Color? value, Widget? child) {
          return Card(
            elevation: _getElevation(theme),
            shadowColor: _getShadowColor(theme),
            shape: _getBorder(theme),
            color: value ?? theme.colors.brand.surface,
            child: widget.child,
          );
        },
      ),
    );
  }

  double _getElevation(final FlutterBluePrintThemeExtension theme) {
    if (widget.cardType == BluePrintCardType.outlined) {
      if (_currentState == FocusMouseRegionState.hovered) {
        return theme.elevations.elevationMedium.elevation;
      }
      return theme.elevations.elevationLow.elevation;
    } else if (widget.cardType == BluePrintCardType.elevated) {
      return theme.elevations.elevationMedium.elevation;
    }
    return theme.elevations.elevationLow.elevation;
  }

  Color? _getShadowColor(final FlutterBluePrintThemeExtension theme) {
    if (widget.cardType != BluePrintCardType.elevated) {
      return null;
    }
    return theme.elevations.elevationMedium.color;
  }

  ShapeBorder? _getBorder(final FlutterBluePrintThemeExtension theme) {
    final BorderSide borderSide;
    if (widget.cardType == BluePrintCardType.outlined) {
      borderSide = BorderSide(
        color: theme.colors.brand.outline.withOpacity(
          _currentState == FocusMouseRegionState.hovered
              ? theme.opacities.opacity30
              : theme.opacities.opacity50,
        ),
        width: _currentState == FocusMouseRegionState.hovered
            ? theme.borderWidth.borderWidthMedium
            : theme.borderWidth.borderWidthSmall,
      );
    } else {
      borderSide = BorderSide.none;
    }
    return RoundedRectangleBorder(
      side: borderSide,
      borderRadius: BorderRadius.circular(
        theme.borderRadius.borderRadiusLarge,
      ),
    );
  }

  Color _getCardColor(
    final FocusMouseRegionState state,
    final FlutterBluePrintThemeExtension theme,
  ) {
    switch (state) {
      case FocusMouseRegionState.pressed:
        return theme.colors.brand.surfaceContainer
            .withOpacity(theme.opacities.opacity70);
      case FocusMouseRegionState.hovered:
        return theme.colors.brand.surfaceContainer
            .withOpacity(theme.opacities.opacity80);
      case FocusMouseRegionState.focused:
        return theme.colors.brand.surfaceContainer
            .withOpacity(theme.opacities.opacity70);
      case FocusMouseRegionState.normal:
        return theme.colors.brand.surfaceContainer;
    }
  }
}