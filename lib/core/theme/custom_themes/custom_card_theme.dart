import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';

class CustomCardTheme {
  CustomCardTheme._();

  static CardThemeData darkColorCardTheme = CardThemeData(
    color: AppColors.darkCard,
    elevation: 0,
    shadowColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: AppColors.darkBorder),
    ),
  );
  static CardThemeData lightColorCardTheme = CardThemeData(
    shadowColor: Colors.transparent,
    color: AppColors.lightCard,
    elevation: 0,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: AppColors.lightBorder),
    ),
  );
}
