import 'package:google_fonts/google_fonts.dart';

enum AvailableFonts {
  roboto(GoogleFonts.roboto),
  notoSans(GoogleFonts.notoSans);

  final Function fontName;

  const AvailableFonts(this.fontName);
}
