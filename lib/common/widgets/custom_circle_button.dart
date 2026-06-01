import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';

class CustomCircleButton extends StatefulWidget {
  final VoidCallback onTap;

  final IconData icon;
  const CustomCircleButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  State<CustomCircleButton> createState() => _CustomCircleButtonState();
}

class _CustomCircleButtonState extends State<CustomCircleButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: InnerShadow(
          shadows: [
            Shadow(
              color: AppColors.darkMutedText.withValues(alpha: 0.25),
              blurRadius: 10.0,
              offset: Offset(4, 4),
            ),
          ],
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.darkBackground,
              // border: Border.all(color: AppColors.darkBorder),
            ),
            child: Icon(widget.icon, color: AppColors.darkMutedText, size: 14),
          ),
        ),
      ),
    );
  }
}
