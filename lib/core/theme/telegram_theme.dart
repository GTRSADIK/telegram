import 'package:flutter/material.dart';
import '../constants/colors.dart';

final telegramDarkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  scaffoldBackgroundColor: TgColors.bg,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF2AABEE),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: TgColors.appBar,
    elevation: 0,
  ),
);
