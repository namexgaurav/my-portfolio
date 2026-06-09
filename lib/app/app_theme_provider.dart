import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.system;

  ThemeMode get theme => _theme;

  bool get isDarkMode => _theme == ThemeMode.dark;

  void setTheme(ThemeMode theme) {
    if (_theme == theme) return;
    _theme = theme;
    notifyListeners();
     }

  void toggleTheme() {
    if (_theme == ThemeMode.light) {
      setTheme(ThemeMode.dark);
    } else {
      setTheme(ThemeMode.light);
    }
  }
}
