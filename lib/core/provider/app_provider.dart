import 'package:delivery/core/storage/prefs.dart';
import 'package:flutter/material.dart';
import '../utils/easy_notifier.dart';

class AppProvider extends EasyNotifier {
  static ThemeMode get _defaultThemeMode =>
      theme == 0 ? ThemeMode.light : ThemeMode.dark;

  ThemeMode _themeMode = _defaultThemeMode;
  ThemeMode get themeMode => _themeMode;
  set themeMode(ThemeMode mode) {
    theme = (mode == ThemeMode.light) ? 0 : 1;
    notify(() => _themeMode = mode);
  }
}
