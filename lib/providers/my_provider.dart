import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String locale = 'en';
  ThemeMode modeApp = ThemeMode.light;

  changeLanguage(String langCode) {
    locale = langCode;
    notifyListeners();
  }

  changeTheme(ThemeMode mode) {
    modeApp = mode;

    notifyListeners();
  }
}
