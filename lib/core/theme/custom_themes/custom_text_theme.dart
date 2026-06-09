import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';

class CustomTextTheme {
  CustomTextTheme._();

  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w800,
      letterSpacing: -1.2,
      color: AppColors.lightText,
    ),
    headlineMedium: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: AppColors.lightText,
    ),
    titleLarge: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.lightText,
    ),
    titleMedium: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.lightMutedText,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.6,
      color: AppColors.lightMutedText,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: AppColors.lightMutedText,
    ),
    labelLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.8,
      color: AppColors.primary,
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: const TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w800,
      letterSpacing: -1.2,
      color: AppColors.darkText,
    ),
    headlineMedium: const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: AppColors.darkText,
    ),
    titleLarge: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.darkText,
    ),
    titleMedium: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.darkMutedText,
    ),
    bodyLarge: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.6,
      color: AppColors.darkMutedText,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: AppColors.darkMutedText,
    ),
    labelLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.8,
      color: AppColors.primary,
    ),
  );
}
