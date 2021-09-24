import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  bool _isDarkMode() => _box.read(_key) ?? false;

  void _toggleDarkMode(bool isDarkMode) => _box.write(_key, isDarkMode);

  ThemeMode get theme => _isDarkMode() ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    Get.changeThemeMode(_isDarkMode() ? ThemeMode.light : ThemeMode.dark);

    _toggleDarkMode(!_isDarkMode());
  }
}
