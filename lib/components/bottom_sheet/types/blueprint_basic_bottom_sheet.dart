import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/bottom_sheet/core/blueprint_core_bottom_sheet.dart';

class BluePrintBasicBottomSheet {
  static BluePrintBasicBottomSheet? _instance;

  BluePrintBasicBottomSheet._();

  static BluePrintBasicBottomSheet getInstance() =>
      _instance ??= BluePrintBasicBottomSheet._();

  Future show({
    required final BuildContext context,
    required final bool isDismissible,
    required final Widget Function() contentBuilder,
    final String? primaryActionLabel,
    final String? secondaryActionLabel,
    final bool showDragHandle = true,
    final bool showDividerBefore = false,
    final Function()? primaryActionPressed,
    final Function()? secondaryActionPressed,
    final BluePrintBottomSheetButtonAlignment buttonAlignment =
        BluePrintBottomSheetButtonAlignment.endAlignedButtons,
  }) {
    return BluePrintCoreBottomSheet.getInstance().show(
      context: context,
      isDismissible: isDismissible,
      contentBuilder: contentBuilder,
      secondaryActionPressed: secondaryActionPressed,
      secondaryActionLabel: secondaryActionLabel,
      primaryActionPressed: primaryActionPressed,
      primaryActionLabel: primaryActionLabel,
      buttonAlignment: buttonAlignment,
      showDividerBeforeActionButtons: showDividerBefore,
      showDragHandle: showDragHandle,
    );
  }
}
