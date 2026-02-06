import 'package:evently_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: LightColors.background,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: LightColors.primary,
      onPrimary: LightColors.white,
      secondary: LightColors.black,
      onSecondary: LightColors.white,
      error: LightColors.red,
      onError: LightColors.white,
      surface: LightColors.white,
      onSurface: LightColors.black,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: LightColors.background,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: LightColors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: LightColors.white,
      selectedItemColor: LightColors.primary,
      unselectedItemColor: LightColors.grey,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: LightColors.primary,
      foregroundColor: LightColors.white,
      shape: CircleBorder(side: BorderSide(color: LightColors.white, width: 4)),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: LightColors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: LightColors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: LightColors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: LightColors.black,
      ),
    ),
    useMaterial3: true,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkColors.background,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: DarkColors.primary,
      onPrimary: DarkColors.white,
      secondary: DarkColors.white,
      onSecondary: DarkColors.black,
      error: DarkColors.red,
      onError: DarkColors.white,
      surface: DarkColors.darkGrey,
      onSurface: DarkColors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: DarkColors.background,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: DarkColors.white),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: DarkColors.background,
      selectedItemColor: DarkColors.primary,
      unselectedItemColor: DarkColors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: DarkColors.primary,
      foregroundColor: DarkColors.white,
      shape: CircleBorder(side: BorderSide(color: DarkColors.white, width: 4)),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: DarkColors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: DarkColors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: DarkColors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: DarkColors.white,
      ),
    ),
    useMaterial3: true,
  );
}
