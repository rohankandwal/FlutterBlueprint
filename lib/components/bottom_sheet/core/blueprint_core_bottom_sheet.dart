import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/common/blueprint_bottom_sheet_center_aligned_buttons.dart';
import 'package:flutter_blueprint/components/common/blueprint_bottom_sheet_end_aligned_buttons.dart';
import 'package:flutter_blueprint/components/common/blueprint_bottom_sheet_expanded_buttons.dart';
import 'package:flutter_blueprint/components/common/blueprint_bottom_sheet_start_aligned_buttons.dart';
import 'package:flutter_blueprint/util/extensions.dart';

class BluePrintCoreBottomSheet {
  BluePrintCoreBottomSheet._();

  static BluePrintCoreBottomSheet? _instance;

  static BluePrintCoreBottomSheet getInstance() =>
      _instance ??= BluePrintCoreBottomSheet._();

  Future show({
    required final BuildContext context,
    required final bool isDismissible,
    required final Widget Function() contentBuilder,
    final String? primaryActionLabel,
    final String? secondaryActionLabel,
    final bool showDragHandle = false,
    final bool showDividerBeforeActionButtons = false,
    final Function()? primaryActionPressed,
    final Function()? secondaryActionPressed,
    final BluePrintBottomSheetButtonAlignment? buttonAlignment,
  }) {
    assert(
        primaryActionPressed != null
            ? primaryActionLabel != null
            : primaryActionLabel == null,
        'primaryActionLabel & primaryActionPressed should either both be provided or none should be provided');

    assert(
        secondaryActionPressed != null
            ? secondaryActionLabel != null
            : secondaryActionLabel == null,
        'secondaryActionLabel & secondaryActionPressed should either both be provided or none should be provided');

    assert(primaryActionLabel == null ? secondaryActionLabel == null : true,
        'If primaryActionLabel is null, secondaryActionLabel shouldn\'t be provided');

    final theme = context.theme;
    return showModalBottomSheet(
        context: context,
        isDismissible: isDismissible,
        useSafeArea: true,
        isScrollControlled: true,
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
        showDragHandle: showDragHandle,
        backgroundColor: theme.colors.brand.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(theme.spacings.spacing28),
            topRight: Radius.circular(theme.spacings.spacing28),
          ),
        ),
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (!showDragHandle) ...{
                  SizedBox(
                    height: theme.spacings.spacing32,
                  )
                },
                contentBuilder.call(),
                if (showDividerBeforeActionButtons) ...{
                  // todo add divider after merge
                },
                if (primaryActionLabel != null) ...{
                  if (buttonAlignment ==
                      BluePrintBottomSheetButtonAlignment
                          .endAlignedButtons) ...{
                    BluePrintBottomSheetEndAlignedButtons(
                      key: UniqueKey(),
                      primaryActionLabel: primaryActionLabel,
                      primaryActionPressed: primaryActionPressed!,
                      secondaryActionLabel: secondaryActionLabel,
                      secondaryActionPressed: secondaryActionPressed,
                    ),
                  } else if (buttonAlignment ==
                      BluePrintBottomSheetButtonAlignment
                          .startAlignedButtons) ...{
                    BluePrintBottomSheetStartAlignedButtons(
                      key: UniqueKey(),
                      primaryActionLabel: primaryActionLabel,
                      primaryActionPressed: primaryActionPressed!,
                      secondaryActionLabel: secondaryActionLabel,
                      secondaryActionPressed: secondaryActionPressed,
                    ),
                  } else if (buttonAlignment ==
                      BluePrintBottomSheetButtonAlignment
                          .centerAlignedButtons) ...{
                    BluePrintBottomSheetCenterAlignedButtons(
                      key: UniqueKey(),
                      primaryActionLabel: primaryActionLabel,
                      primaryActionPressed: primaryActionPressed!,
                      secondaryActionLabel: secondaryActionLabel,
                      secondaryActionPressed: secondaryActionPressed,
                    ),
                  } else if (buttonAlignment ==
                      BluePrintBottomSheetButtonAlignment
                          .expandedAlignedButtons) ...{
                    BluePrintBottomSheetExpandedButtons(
                      key: UniqueKey(),
                      primaryActionLabel: primaryActionLabel,
                      primaryActionPressed: primaryActionPressed!,
                      secondaryActionLabel: secondaryActionLabel,
                      secondaryActionPressed: secondaryActionPressed,
                    ),
                  }
                },
              ],
            ),
          );
        });
  }
}

enum BluePrintBottomSheetButtonAlignment {
  endAlignedButtons,
  startAlignedButtons,
  expandedAlignedButtons,
  centerAlignedButtons;
}
