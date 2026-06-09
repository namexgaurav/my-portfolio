import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_portfolio/app/app_theme_provider.dart';
import 'package:provider/provider.dart';

class CustomThemeCircleButton extends StatefulWidget {
  const CustomThemeCircleButton({
    super.key,
  });

  @override
  State<CustomThemeCircleButton> createState() => _CustomThemeCircleButtonState();
}

class _CustomThemeCircleButtonState extends State<CustomThemeCircleButton> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    final themeToggel = Provider.of<AppThemeProvider>(context);
    final bool isDarkMode = themeToggel.isDarkMode;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      child: GestureDetector(
        onTap: () => themeToggel.toggleTheme(),
        child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        color: Theme.of(context).colorScheme.surfaceContainerHighest, 
        shape: BoxShape.circle,
                  ),
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0, end: _isHover ?  0.1 : 0),
                    duration: const Duration(milliseconds: 300),
                    builder: (context, value, child) => AnimatedRotation(turns: value, duration: const Duration(milliseconds: 300), child: child,),
                    child: Center(child: Icon(isDarkMode ? LucideIcons.sun : LucideIcons.moon300, color: Theme.of(context).colorScheme.onSurfaceVariant, size: 16.0)))
                ),
      ),
    );
  }
}
