import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_portfolio/app/app_theme_provider.dart';
import 'package:my_portfolio/common/widgets/custom_circle_button.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:provider/provider.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeToggel = Provider.of<AppThemeProvider>(context);
    final List<String> navbarItems = [
      "About",
      "Experience",
      "Projects",
      "Contact us",
    ];
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(99),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCircleButton(
              onTap: () {},
              icon: LucideIcons.code,
              color: AppColors.primary,
            ),
            const SizedBox(width: 8.0),
            ...List.generate(navbarItems.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: _NavbarMenuItems(text: navbarItems[index]),
              );
            }),
            CustomCircleButton(
              onTap: () => themeToggel.toggleTheme(),
              icon: themeToggel.isDarkMode ? LucideIcons.sun : LucideIcons.moon,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavbarMenuItems extends StatefulWidget {
  const _NavbarMenuItems({required this.text});
  final String text;
  @override
  State<_NavbarMenuItems> createState() => __NavbarMenuItemsState();
}

class __NavbarMenuItemsState extends State<_NavbarMenuItems> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      child: GestureDetector(
        onTap: () {},
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
            color: _isHover
                ? AppColors.primary
                : Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Text(
            widget.text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
