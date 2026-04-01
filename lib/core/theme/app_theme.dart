import 'package:evently_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      elevation: 0,
      backgroundColor: LightColors.primary,
      selectedItemColor: LightColors.white,
      unselectedItemColor: LightColors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: LightColors.primary,
      foregroundColor: LightColors.white,
      shape: CircleBorder(side: BorderSide(color: LightColors.white, width: 5)),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: LightColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
    ),
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        headlineLarge: TextStyle(color: LightColors.black),
        headlineMedium: TextStyle(color: LightColors.black),
        bodyLarge: TextStyle(color: LightColors.black),
        bodyMedium: TextStyle(color: LightColors.black),
      ),
    ),
    useMaterial3: true,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkColors.background,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: DarkColors.primaryBlue,
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
      elevation: 0,
      backgroundColor: DarkColors.background,
      selectedItemColor: DarkColors.white,
      unselectedItemColor: DarkColors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: DarkColors.primary,
      foregroundColor: DarkColors.white,
      shape: CircleBorder(side: BorderSide(color: DarkColors.white, width: 5)),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: DarkColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
    ),
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        headlineLarge: TextStyle(color: DarkColors.white),
        headlineMedium: TextStyle(color: DarkColors.white),
        bodyLarge: TextStyle(color: DarkColors.white),
        bodyMedium: TextStyle(color: DarkColors.white),
      ),
    ),
    useMaterial3: true,
  );
}
