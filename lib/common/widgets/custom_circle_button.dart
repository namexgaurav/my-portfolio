import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';

class CustomCircleButton extends StatefulWidget {
  final VoidCallback onTap;
  final Color color;
  final IconData icon;
  const CustomCircleButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.color,
  });

  @override
  State<CustomCircleButton> createState() => _CustomCircleButtonState();
}

class _CustomCircleButtonState extends State<CustomCircleButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final Color onCardColor = Theme.of(context).colorScheme.onSurfaceVariant;
    final Color cardColor = Theme.of(
      context,
    ).colorScheme.surfaceContainerHighest;
    final Color shadow = Theme.of(context).colorScheme.secondary;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: InnerShadow(
          shadows: [
            Shadow(
              color: _isHover
                  ? widget.color.withValues(alpha: 0.2)
                  : shadow.withValues(alpha: 0.2),
              blurRadius: 10.0,
              offset: Offset(4, 4),
            ),
          ],
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(color: cardColor, shape: BoxShape.circle),
            child: TweenAnimationBuilder(
              tween: ColorTween(
                begin: onCardColor,
                end: _isHover ? widget.color : onCardColor,
              ),
              duration: const Duration(milliseconds: 200),
              builder: (context, value, _) {
                return Icon(widget.icon, color: value, size: 16.0);
              },
            ),
          ),
        ),
      ),
    );
  }
}
