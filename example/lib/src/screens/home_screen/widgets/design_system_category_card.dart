import 'package:flutter/material.dart';
import 'package:flutter_blueprint/flutter_blueprint.dart';

const double _kCardHeight = 100;

class DesignSystemCategoryCard extends StatelessWidget {
  final String title;
  final Widget child;

  const DesignSystemCategoryCard({
    required this.title,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Container(
      margin:
          EdgeInsetsDirectional.symmetric(horizontal: theme.spacings.spacing16),
      decoration: BoxDecoration(
        borderRadius: _getBorderRadius(context),
        boxShadow: [theme.elevations.elevationMedium.getBoxShadow()],
      ),
      child: Card(
        margin: EdgeInsetsDirectional.zero,
        clipBehavior: Clip.antiAlias,
        color: theme.colors.brand.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: _getBorderRadius(context)),
        child: InkWell(
          splashColor: theme.colors.neutral.neutral20,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => child),
          ),
          child: Center(
            child: SizedBox(
              height: _kCardHeight,
              child: Center(
                child: Text(title, style: theme.textStyle.title2_700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

BorderRadiusGeometry _getBorderRadius(BuildContext context) =>
    BorderRadius.circular(
      context.theme.borderRadius.borderRadiusMedium,
    );
