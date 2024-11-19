import 'package:flutter/material.dart';

enum FocusMouseRegionState {
  normal,
  hovered,
  focused,
  pressed,
}

class BluePrintFocusMouseRegion extends StatefulWidget {
  final Widget child;
  final ValueChanged<FocusMouseRegionState>? onStateChanged;
  final bool canRequestFocus;

  const BluePrintFocusMouseRegion({
    required this.child,
    required this.onStateChanged,
    this.canRequestFocus = true,
    super.key,
  });

  @override
  State<BluePrintFocusMouseRegion> createState() =>
      _BluePrintFocusMouseRegionState();
}

class _BluePrintFocusMouseRegionState extends State<BluePrintFocusMouseRegion> {
  final FocusNode focusNode = FocusNode();
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        isHovered = true;
        _handleStateChanged(
          FocusMouseRegionState.hovered,
        );
      },
      onExit: (_) {
        isHovered = false;
        _handleStateChanged(
          FocusMouseRegionState.normal,
        );
      },
      child: GestureDetector(
        onTapDown: (_) => _handleStateChanged(
          FocusMouseRegionState.pressed,
        ),
        onTapUp: (_) => _handleStateChanged(
          isHovered
              ? FocusMouseRegionState.hovered
              : FocusMouseRegionState.normal,
        ),
        // onTapCancel: () => _handleStateChanged(
        //   FocusMouseRegionState.normal,
        // ),
        child: Focus(
          focusNode: focusNode,
          onFocusChange: (hasFocus) => _handleStateChanged(
            hasFocus
                ? FocusMouseRegionState.focused
                : FocusMouseRegionState.normal,
          ),
          canRequestFocus: widget.canRequestFocus,
          child: widget.child,
        ),
      ),
    );
  }

  void _handleStateChanged(FocusMouseRegionState newState) {
    if (widget.onStateChanged != null) {
      widget.onStateChanged!(newState);
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }
}
