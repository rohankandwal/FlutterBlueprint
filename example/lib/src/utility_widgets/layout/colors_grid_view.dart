import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

const double _kMaxCrossAxisExtent = 100;
const double _kChildAspectRatio = 1.2;

class ColorsGridView extends StatelessWidget {
  final List<Color> colors;
  final List<String> colorTitles;
  final double? maxCrossAxisExtent;
  final double? childAspectRatio;

  const ColorsGridView({
    required this.colors,
    required this.colorTitles,
    this.maxCrossAxisExtent,
    this.childAspectRatio,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: maxCrossAxisExtent ?? _kMaxCrossAxisExtent,
        childAspectRatio: childAspectRatio ?? _kChildAspectRatio,
        crossAxisSpacing: theme.spacings.spacing16,
        mainAxisSpacing: theme.spacings.spacing16,
      ),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: colors.length,
      padding: EdgeInsets.symmetric(vertical: theme.spacings.spacing8),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: colors[index],
                  border: Border.all(
                    color: theme.colors.neutral.neutral20,
                    width: theme.borderWidth.borderWidthSmall,
                  ),
                  borderRadius: BorderRadius.circular(
                      theme.borderRadius.borderRadiusMedium),
                ),
              ),
            ),
            Text(
              colorTitles[index].substring(6, colorTitles[index].length - 1),
              style: theme.textStyle.caption_600
                  .copyWith(color: theme.colors.neutral.neutral30),
            ),
          ],
        );
      },
    );
  }
}
