import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/theme/custom_themes/custom_card_theme.dart';
import 'package:my_portfolio/core/theme/custom_themes/custom_color_scheme.dart';
import 'package:my_portfolio/core/theme/custom_themes/custom_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.darkBackground,
    dividerColor: AppColors.darkBorder,
    cardTheme: CustomCardTheme.darkColorCardTheme,
    textTheme: CustomTextTheme.darkTextTheme,
    colorScheme: AppColorScheme.dark
  );

  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.lightBackground,
    dividerColor: AppColors.lightBorder,
    cardTheme: CustomCardTheme.lightColorCardTheme,
    textTheme: CustomTextTheme.lightTextTheme,
    colorScheme: AppColorScheme.light
  );
}
