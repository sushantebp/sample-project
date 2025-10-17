import 'package:flutter/material.dart';
import 'package:sample_project/core/core.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    fontFamily: AppConstant.latoFont,
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.radiusMedium),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.paddingMedium,
          horizontal: AppSize.paddingLarge,
        ),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: AppSize.fontExtraExtraLarge,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontSize: AppSize.fontExtraLarge,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(fontSize: AppSize.fontMedium),
      bodyMedium: TextStyle(fontSize: AppSize.fontSmall),
      bodySmall: TextStyle(fontSize: AppSize.fontExtraSmall),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    fontFamily: AppConstant.latoFont,
    colorScheme: ColorScheme.dark(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
      surface: AppColor.darkBackground,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
    ),
    scaffoldBackgroundColor: AppColor.darkBackground,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.radiusMedium),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.paddingMedium,
          horizontal: AppSize.paddingLarge,
        ),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: AppSize.fontExtraExtraLarge,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontSize: AppSize.fontExtraLarge,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: const TextStyle(fontSize: AppSize.fontMedium),
      bodyMedium: const TextStyle(fontSize: AppSize.fontSmall),
      bodySmall: const TextStyle(fontSize: AppSize.fontExtraSmall),
    ),
  );
}
