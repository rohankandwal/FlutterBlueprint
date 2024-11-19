import 'package:flutter/cupertino.dart';

class ThemeNotifier extends ChangeNotifier {
  final List<String> themes;
  late String _selectedTheme;

  ThemeNotifier({
    required this.themes,
  }) {
    _selectedTheme = themes.first;
  }

  setTheme(String newTheme) {
    _selectedTheme = newTheme;
    notifyListeners();
  }

  String getSelectedTheme() => _selectedTheme;
}
