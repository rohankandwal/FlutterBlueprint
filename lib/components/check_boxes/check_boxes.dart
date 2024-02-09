import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint/types/material_state.dart';

class BlueprintCheckBox extends StatelessWidget {
  final bool? value;
  final Function(bool?) onChange;
  final bool enabled;
  final bool tristate;

  const BlueprintCheckBox({
    required this.value,
    required this.onChange,
    this.enabled = true,
    this.tristate = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final materialColorStateMap = getMaterialStateColorMap(theme);
    return Checkbox(
      value: value,
      onChanged: enabled ? onChange : null,
      tristate: tristate,
      focusColor: theme.colors.interaction.hover,
      hoverColor: theme.colors.interaction.hover.withOpacity(0.5),
      checkColor: theme.colors.interaction.main,
      side: MaterialStateBorderSide.resolveWith(
        (Set<MaterialState> states) {
          return BorderSide(
            color: theme.colors.neutral.neutral50,
            width: 1,
          );
        },
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
        side: BorderSide(
          color: theme.colors.neutral.neutral50,
          width: 1,
        ),
      ),
      activeColor: theme.colors.neutral.neutral50,
      fillColor: MaterialStateProperty.resolveWith(
        (states) => Colors.transparent,
      ),
    );
  }

  void _onInkWellTap() {}
}
