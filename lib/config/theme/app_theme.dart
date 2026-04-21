import 'package:flutter/material.dart';
import 'package:flutter_bloc_pattern/config/theme/colors.dart';
import 'package:flutter_bloc_pattern/core/constants/app_sizes.dart';

class AppTheme {
  AppTheme._();
  // Light Theme
  static ThemeData get lightTheme {
    final colors = AppColors.lightColors;
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        surface: colors.backgroundColor,
        onPrimary: colors.blackColor,
        onSurface: colors.whiteColor,
        primary: colors.primaryColor,
        onSurfaceVariant: colors.textColor,
      ),
      scaffoldBackgroundColor: colors.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.backgroundColor,
        foregroundColor: colors.textColor,
        elevation: 0,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: AppSizes.titleLarge,
          color: colors.textColor,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: AppSizes.titleNormal,
          color: colors.textColor,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          fontSize: AppSizes.textLarge,
          color: colors.textColor,
        ),
        bodyMedium: TextStyle(
          fontSize: AppSizes.textNormal,
          color: colors.textColor,
        ),
      ),
      extensions: <ThemeExtension<dynamic>>[colors],
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    final colors = AppColors.darkColors;
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        surface: colors.backgroundColor,
        onPrimary: colors.blackColor,
        onSurface: colors.whiteColor,
        primary: colors.primaryColor,
        onSurfaceVariant: colors.textColor,
      ),
      scaffoldBackgroundColor: colors.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.backgroundColor,
        foregroundColor: colors.textColor,
        elevation: 0,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: AppSizes.titleLarge,
          color: colors.textColor,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: AppSizes.titleNormal,
          color: colors.textColor,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          fontSize: AppSizes.textLarge,
          color: colors.textColor,
        ),
        bodyMedium: TextStyle(
          fontSize: AppSizes.textNormal,
          color: colors.textColor,
        ),
      ),
      extensions: <ThemeExtension<dynamic>>[colors],
    );
  }
}
