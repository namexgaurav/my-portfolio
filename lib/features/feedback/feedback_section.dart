import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_portfolio/common/widgets/custom_heading_widget.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_size.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.sectionPaddingLg * 4,
        vertical: AppSize.lg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeadingWidget(heading: "People I've built with"),
          const SizedBox(height: AppSize.md),
          _FeedbackCard(),
        ],
      ),
    );
  }
}

class _FeedbackCard extends StatelessWidget {
  const _FeedbackCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.lg),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        borderRadius: BorderRadius.circular(AppSize.borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            LucideIcons.quote,
            color: AppColors.primary,
            size: AppSize.iconCm,
          ),
          const SizedBox(height: AppSize.sm),
          Text(
            "Developed and maintained scalable Flutter applications with a focus on performance, clean code, and exceptional user experience.",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: AppSize.sm),
          Divider(color: Theme.of(context).colorScheme.outline),
          const SizedBox(height: AppSize.sm),
          Text(
            "People name",
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontSize: AppSize.fontSm),
          ),
          Text(
            "designation - company name",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontSize: AppSize.fontXs),
          ),
        ],
      ),
    );
  }
}
