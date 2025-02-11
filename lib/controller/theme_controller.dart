import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;

  ThemeMode get getThemeMode {
    if (isDarkMode.value) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  void switchThemeMode() {
    isDarkMode.value = !isDarkMode.value;
  }
}
