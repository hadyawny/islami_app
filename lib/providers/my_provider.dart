import 'package:flutter/material.dart';
import 'package:islami_app/prefs_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  String locale = 'en';
  ThemeMode modeApp = ThemeMode.light;

  void init() async {
    String? newLanguage = PrefsHelper.getLanguage();
    changeLanguage(newLanguage ?? "en");

    String newTheme = PrefsHelper.getTheme();

    if (newTheme == "light") {
      modeApp = ThemeMode.light;
    } else {
      modeApp = ThemeMode.dark;
    }
  }

  changeLanguage(String langCode) {
    locale = langCode;
    PrefsHelper.saveLanguage(langCode);
    notifyListeners();
  }

  changeTheme(ThemeMode mode) {
    modeApp = mode;
    if (mode == ThemeMode.dark) {
      PrefsHelper.saveTheme("dark");
    } else {
      PrefsHelper.saveTheme("light");
    }
    notifyListeners();
  }
}
