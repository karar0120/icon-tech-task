import 'package:flutter/material.dart';
import 'package:icon_tech_task/core/theming/color.dart';

ThemeData themeData = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: ColorsManager.mainGreen),
    primaryColor: ColorsManager.mainGreen,
    scaffoldBackgroundColor: Colors.white,
    cardColor: ColorsManager.dark,
    indicatorColor: ColorsManager.gray,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorsManager.mainGreen,
      selectionColor: ColorsManager.mainGreen,
      selectionHandleColor: ColorsManager.mainGreen,
    ));
