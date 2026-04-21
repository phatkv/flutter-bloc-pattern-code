import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  AppColors({
    required this.whiteColor,
    required this.blackColor,
    required this.backgroundColor,
    required this.textColor,
    required this.primaryColor,
    required this.favoriteActive,
    required this.favoriteInactive,
  });

  final Color whiteColor;
  final Color blackColor;
  final Color backgroundColor;
  final Color textColor;
  final Color primaryColor;
  final Color favoriteActive;
  final Color favoriteInactive;

  // Light Theme Colors
  static final lightColors = AppColors(
    whiteColor: const Color(0xffFFFFFF),
    blackColor: const Color(0xff000000),
    backgroundColor: const Color(0xffFFFFFF),
    textColor: const Color.fromARGB(255, 46, 45, 45),
    primaryColor: const Color(0xff000000),
    favoriteActive: const Color(0xffE53935),
    favoriteInactive: const Color(0xffBDBDBD),
  );

  // Dark Theme Colors
  static final darkColors = AppColors(
    whiteColor: const Color(0xff1E1E1E),
    blackColor: const Color(0xffFFFFFF),
    backgroundColor: const Color(0xff121212),
    textColor: const Color(0xffE0E0E0),
    primaryColor: const Color(0xffBB86FC),
    favoriteActive: const Color(0xffFF5252),
    favoriteInactive: const Color(0xff757575),
  );

  @override
  AppColors copyWith({
    Color? whiteColor,
    Color? blackColor,
    Color? backgroundColor,
    Color? textColor,
    Color? primaryColor,
    Color? favoriteActive,
    Color? favoriteInactive,
  }) {
    return AppColors(
      whiteColor: whiteColor ?? this.whiteColor,
      blackColor: blackColor ?? this.blackColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
      primaryColor: primaryColor ?? this.primaryColor,
      favoriteActive: favoriteActive ?? this.favoriteActive,
      favoriteInactive: favoriteInactive ?? this.favoriteInactive,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t)!,
      blackColor: Color.lerp(blackColor, other.blackColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      favoriteActive: Color.lerp(favoriteActive, other.favoriteActive, t)!,
      favoriteInactive: Color.lerp(
        favoriteInactive,
        other.favoriteInactive,
        t,
      )!,
    );
  }
}
