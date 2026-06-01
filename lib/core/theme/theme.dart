import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.darkBackground,
    dividerColor: AppColors.darkBorder,
  );

  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.lightBackground,
    dividerColor: AppColors.lightBorder,
  );
}
