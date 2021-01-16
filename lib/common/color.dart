import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:innenu/utils/utils.dart';

class _CommonColor {
  _CommonColor() {
    _isDarkMode = window.platformBrightness == Brightness.dark;
    window.onPlatformBrightnessChanged = () {
      _isDarkMode = window.platformBrightness == Brightness.dark;
    };
  }

  bool _isDarkMode;

  bool get isDarkmode => _isDarkMode;

  Color bgColor({bool grey = false}) => isDarkmode
      ? Colors.black
      : grey
          ? const Color(0xffefeef4)
          : Colors.white;
}

_CommonColor commonColor = _CommonColor();

/// 浅色颜色方案
final ColorScheme lightColorScheme = const ColorScheme.light().copyWith(
    primary: Colors.greenAccent[400], primaryVariant: Colors.greenAccent[300]);

/// 深色颜色方案
final ColorScheme darkColorScheme = const ColorScheme.dark()
    .copyWith(primary: Colors.green, primaryVariant: Colors.greenAccent[800]);

/// 是否是夜间模式
bool isDarkMode() => window.platformBrightness == Brightness.dark;

/// 系统模式映射
final _themeModeMap = Tool.string2EnumMap<ThemeMode>(ThemeMode.values,
    defaultValue: ThemeMode.system);

Future<ThemeMode> getThemeMode() async {
  final themeType = await Storage.getStringKey('theme') ?? 'system';

  return _themeModeMap(themeType);
}

Future<void> setThemeMode(String thememode) async {
  await Storage.setStringKey('theme', thememode);
}
