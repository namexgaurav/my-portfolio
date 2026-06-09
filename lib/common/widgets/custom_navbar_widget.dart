import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_portfolio/common/widgets/custom_theme_circle_button_widget.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> navbarItems = [
      "About",
      "Experience",
      "Stack",
      "Projects",
      "Feedback",
      "Resources",
      "Contact us",
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(99),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Theme.of(context).colorScheme.outline),
              borderRadius: BorderRadius.circular(99),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      LucideIcons.user,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      size: 16.0,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                ...List.generate(navbarItems.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: _NavbarMenuItems(text: navbarItems[index]),
                  );
                }),
                const SizedBox(width: 2.0),
                const CustomThemeCircleButton(),
              ],
            ),
          ),
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
        child: Text(
          widget.text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: _isHover ? Theme.of(context).colorScheme.onSurface : null,
          ),
        ),
      ),
    );
  }
}
