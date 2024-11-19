const double _iconXSmallSize = 12;
const double _iconSmallSize = 16;
const double _iconRegularSize = 20;
const double _iconMediumSize = 24;
const double _iconLargeSize = 28;
const double _iconXLargeSize = 32;
const double _iconXXLargeSize = 36;
const double _iconXXXLargeSize = 40;

enum BluePrintIconSize {
  xSmall(_iconXSmallSize),
  small(_iconSmallSize),
  regular(_iconRegularSize),
  medium(_iconMediumSize),
  large(_iconLargeSize),
  xLarge(_iconXLargeSize),
  xXLarge(_iconXXLargeSize),
  xXXLarge(_iconXXXLargeSize);

  const BluePrintIconSize(this.size);

  final double size;
}
