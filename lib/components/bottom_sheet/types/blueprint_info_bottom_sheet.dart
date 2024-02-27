import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/bottom_sheet/core/blueprint_core_bottom_sheet.dart';

class BluePrintInfoBottomSheet {
  static BluePrintInfoBottomSheet? _instance;

  BluePrintInfoBottomSheet._();

  static BluePrintInfoBottomSheet getInstance() =>
      _instance ??= BluePrintInfoBottomSheet._();

  Future show({
    required final BuildContext context,
    required final bool isDismissible,
    required final Widget Function() contentBuilder,
    final bool showDragHandle = true,
  }) {
    return BluePrintCoreBottomSheet.getInstance().show(
      context: context,
      isDismissible: isDismissible,
      contentBuilder: contentBuilder,
      showDragHandle: showDragHandle,
      showDividerBeforeActionButtons: false,
    );
  }
}
