import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';

class AppColorScheme {
  AppColorScheme._();

  static const ColorScheme dark = ColorScheme(
    brightness: Brightness.dark,

    primary: AppColors.primary,
    onPrimary: AppColors.white,

    secondary: AppColors.secondary,
    onSecondary: AppColors.darkMutedText,

    error: AppColors.error,
    onError: AppColors.white,

    surface: AppColors.darkSurface,
    onSurface: AppColors.darkText,

    primaryContainer: AppColors.primary,
    onPrimaryContainer: AppColors.white,

    secondaryContainer: AppColors.darkCard,
    onSecondaryContainer: AppColors.white,

    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.white,

    surfaceContainerHighest: AppColors.darkBackground,
    onSurfaceVariant: AppColors.darkMutedText,

    outline: AppColors.darkBorder,
    outlineVariant: AppColors.darkBorder,

    shadow: AppColors.black,
    scrim: AppColors.black,

    tertiary: AppColors.iconDarkBgColor,
    onTertiary: AppColors.iconLightBgColor

  );

  static const ColorScheme light = ColorScheme(
    brightness: Brightness.light,

    primary: AppColors.primary,
    onPrimary: AppColors.white,

    secondary: AppColors.secondary,
    onSecondary: AppColors.lightText,

    error: AppColors.error,
    onError: AppColors.white,

    surface: AppColors.lightSurface,
    onSurface: AppColors.lightText,

    primaryContainer: AppColors.primary,
    onPrimaryContainer: AppColors.white,

    secondaryContainer: AppColors.lightCard,
    onSecondaryContainer: AppColors.lightText,

    errorContainer: AppColors.errorContainer,
    onErrorContainer: AppColors.white,

    surfaceContainerHighest: AppColors.lightBackground,
    onSurfaceVariant: AppColors.lightMutedText,

    outline: AppColors.lightBorder,
    outlineVariant: AppColors.lightBorder,

    shadow: AppColors.black,
    scrim: AppColors.black,

    tertiary: AppColors.iconLightBgColor,
    onTertiary: AppColors.iconDarkBgColor,
  );
}