import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_portfolio/app/app_theme_provider.dart';
import 'package:my_portfolio/common/widgets/custom_circle_button.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:provider/provider.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeToggel = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 28,
                ),
                margin: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.darkBorder),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Home", style: TextStyle(color: AppColors.darkText)),
                    const SizedBox(width: 8.0),
                    Text(
                      "Experience",
                      style: TextStyle(color: AppColors.darkText),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      "Tech Stack",
                      style: TextStyle(color: AppColors.darkText),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      "Projects",
                      style: TextStyle(color: AppColors.darkText),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      "Contribution",
                      style: TextStyle(color: AppColors.darkText),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      "Feedback",
                      style: TextStyle(color: AppColors.darkText),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      "Contact us",
                      style: TextStyle(color: AppColors.darkText),
                    ),
                    const SizedBox(width: 8.0),
                    CustomCircleButton(
                      onTap: () => themeToggel.toggleTheme(),
                      icon: LucideIcons.moon,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
