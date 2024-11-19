const double _dividerSmall = 1;
const double _dividerMedium = 4;
const double _dividerLarge = 8;
const double _dividerXLarge = 16;

enum BluePrintDividerSize {
  small(_dividerSmall),
  medium(_dividerMedium),
  large(_dividerLarge),
  xLarge(_dividerXLarge);

  const BluePrintDividerSize(
    this.height,
  );

  final double height;
}
