import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_size.dart';

class TechStackContainer extends StatefulWidget {
  const TechStackContainer({super.key, required this.label});

  final String label;

  @override
  State<TechStackContainer> createState() => _TechStackContainerState();
}

class _TechStackContainerState extends State<TechStackContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 300),
        child: Container(
          padding: const EdgeInsets.all(AppSize.sm),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.sm),
            color: Theme.of(
              context,
            ).colorScheme.onSurfaceVariant.withValues(alpha: 0.07),
          ),
          child: Text(
            widget.label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontSize: AppSize.fontXs),
          ),
        ),
      ),
    );
  }
}
