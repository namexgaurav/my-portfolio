import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_size.dart';

class AvailableText extends StatefulWidget {
  const AvailableText({super.key});

  @override
  State<AvailableText> createState() => _AvailableTextState();
}

class _AvailableTextState extends State<AvailableText>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);
    _scaleAnimation = Tween<double>(begin: 1, end: 1.6).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _fadeAnimation = Tween<double>(begin: 0.6, end: 0.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: AppSize.md,
          height: AppSize.md,
          child: Center(
            child: Stack(
              children: [
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (BuildContext context, Widget? child) {
                    return FadeTransition(
                      opacity: _fadeAnimation,
                      child: ScaleTransition(
                        scale: _scaleAnimation,
                        child: child,
                      ),
                    );
                  },
                  child: Container(
                    width: AppSize.sm,
                    height: AppSize.sm,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  width: AppSize.sm,
                  height: AppSize.sm,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: AppSize.mini),
        Text(
          "Available for opportunities",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
