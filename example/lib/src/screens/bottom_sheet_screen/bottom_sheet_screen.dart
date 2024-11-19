import 'package:flutter/material.dart';
import 'package:flutter_blueprint/components/bottom_sheet/blueprint_bottom_sheet.dart';
import 'package:flutter_blueprint/components/bottom_sheet/core/blueprint_core_bottom_sheet.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/scaffold/custom_scaffold.dart';
import 'package:flutter_blueprint_example/src/utility_widgets/text/label_text.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return CustomScaffold(
      title: 'BottomSheet',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: theme.spacings.spacing16,
            vertical: theme.spacings.spacing24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const LabelText(title: "Normal BottomSheet"),
              SizedBox(
                height: theme.spacings.spacing4,
              ),
              FilledButton(
                onPressed: () {
                  BluePrintBasicBottomSheet.getInstance().show(
                    context: context,
                    isDismissible: true,
                    contentBuilder: () => Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                      ],
                    ),
                    primaryActionLabel: "Save",
                    primaryActionPressed: () {},
                    secondaryActionLabel: "Cancel",
                    secondaryActionPressed: () {},
                  );
                },
                child: Text(
                  "End aligned buttons",
                  style: theme.textStyle.body_400.copyWith(
                    color: theme.colors.brand.onPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing16,
              ),
              FilledButton(
                onPressed: () {
                  BluePrintBasicBottomSheet.getInstance().show(
                    context: context,
                    isDismissible: true,
                    buttonAlignment:
                        BluePrintBottomSheetButtonAlignment.startAlignedButtons,
                    contentBuilder: () => Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                      ],
                    ),
                    primaryActionLabel: "Save",
                    primaryActionPressed: () {},
                    secondaryActionLabel: "Cancel",
                    secondaryActionPressed: () {},
                  );
                },
                child: Text(
                  "Start aligned buttons",
                  style: theme.textStyle.body_400.copyWith(
                    color: theme.colors.brand.onPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing16,
              ),
              FilledButton(
                onPressed: () {
                  BluePrintBasicBottomSheet.getInstance().show(
                    context: context,
                    isDismissible: true,
                    buttonAlignment: BluePrintBottomSheetButtonAlignment
                        .centerAlignedButtons,
                    contentBuilder: () => Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                      ],
                    ),
                    primaryActionLabel: "Save",
                    primaryActionPressed: () {},
                    secondaryActionLabel: "Cancel",
                    secondaryActionPressed: () {},
                  );
                },
                child: Text(
                  "Center aligned buttons",
                  style: theme.textStyle.body_400.copyWith(
                    color: theme.colors.brand.onPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing16,
              ),
              FilledButton(
                onPressed: () {
                  BluePrintBasicBottomSheet.getInstance().show(
                    context: context,
                    isDismissible: true,
                    buttonAlignment: BluePrintBottomSheetButtonAlignment
                        .expandedAlignedButtons,
                    contentBuilder: () => Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                      ],
                    ),
                    primaryActionLabel: "Save",
                    primaryActionPressed: () {},
                    secondaryActionLabel: "Cancel",
                    secondaryActionPressed: () {},
                  );
                },
                child: Text(
                  "Expanded buttons",
                  style: theme.textStyle.body_400.copyWith(
                    color: theme.colors.brand.onPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: theme.spacings.spacing32,
              ),
              const LabelText(title: "Info BottomSheet"),
              FilledButton(
                onPressed: () {
                  BluePrintInfoBottomSheet.getInstance().show(
                    context: context,
                    isDismissible: true,
                    contentBuilder: () => Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                        Text(
                          "data",
                          style: theme.textStyle.body_400.copyWith(
                            color: theme.colors.brand.onSurface,
                          ),
                        ),
                        SizedBox(
                          height: theme.spacings.spacing4,
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  "Show Info Modal Sheet",
                  style: theme.textStyle.body_400.copyWith(
                    color: theme.colors.brand.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
