import 'package:flutter/cupertino.dart';

class ThemeNotifier extends ChangeNotifier {
  var _selectedTheme = Themes.adminLight;

  Themes getSelectedTheme() => _selectedTheme;

  setTheme(Themes newTheme) {
    _selectedTheme = newTheme;
    notifyListeners();
  }
}

enum Themes {
  adminLight("Admin Light"),
  adminDark("Admin Dark");

  const Themes(this.themeName);

  final String themeName;
}
