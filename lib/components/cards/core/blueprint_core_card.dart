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
  final ValueNotifier<Color> _cardColorNotifier =
      ValueNotifier<Color>(Colors.transparent);

  FocusMouseRegionState _currentState = FocusMouseRegionState.normal;

  @override
  void initState() {
    setInitialColor();
    super.initState();
  }

  void setInitialColor() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final theme = context.theme;
      _cardColorNotifier.value = _getCardColor(
        FocusMouseRegionState.normal,
        theme,
      );
    });
  }

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
            color: theme.colors.brand.surfaceContainer,
            surfaceTintColor: value,
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
      if (_currentState == FocusMouseRegionState.hovered) {
        return theme.elevations.elevationHigh.elevation;
      }
      return theme.elevations.elevationMedium.elevation;
    } else if (widget.cardType == BluePrintCardType.filled) {
      if (_currentState == FocusMouseRegionState.normal ||
          _currentState == FocusMouseRegionState.pressed) {
        return theme.elevations.elevationLow.elevation;
      }
      return theme.elevations.elevationMedium.elevation;
    }
    return theme.elevations.elevationLow.elevation;
  }

  Color? _getShadowColor(final FlutterBluePrintThemeExtension theme) {
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
            .withOpacity(theme.opacities.opacity10);
      case FocusMouseRegionState.hovered:
        return theme.colors.brand.surfaceContainer
            .withOpacity(theme.opacities.opacity20);
      case FocusMouseRegionState.focused:
        return theme.colors.brand.surfaceContainer
            .withOpacity(theme.opacities.opacity10);
      case FocusMouseRegionState.normal:
        return theme.colors.brand.surfaceContainer;
    }
  }

  @override
  void dispose() {
    _cardColorNotifier.dispose();
    super.dispose();
  }
}
