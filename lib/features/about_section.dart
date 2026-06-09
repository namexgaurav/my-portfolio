import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_size.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSize.sectionPaddingLg * 4,
        right: AppSize.sectionPaddingLg * 4,
        top: AppSize.sectionPaddingLg,
        bottom: AppSize.xl,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: BorderRadius.circular(AppSize.borderRadiusLg),
                ),
              ),
              const SizedBox(width: AppSize.md),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gaurav Sharma",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: AppSize.mini),
                  const _AvailableText(),
                ],
              ),
            ],
          ),
          const SizedBox(height: AppSize.md),
          Text(
            '''I'm a Flutter Developer with internship and freelance experience, passionate about building smooth, scalable, and user-friendly mobile applications.\n\nI spend most of my time developing apps, exploring AI tools, and learning new technologies. What excites me most is transforming ideas into products that people can use every day.\n\nCurrently, I'm focused on improving my skills in Flutter, mobile architecture, and modern development practices while building projects that challenge me to grow as an engineer.''',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class _AvailableText extends StatefulWidget {
  const _AvailableText();

  @override
  State<_AvailableText> createState() => _AvailableTextState();
}

class _AvailableTextState extends State<_AvailableText>
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
          "Available for work",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
