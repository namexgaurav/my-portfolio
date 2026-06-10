import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_portfolio/common/widgets/custom_heading_widget.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_size.dart';

class ResourcesSection extends StatelessWidget {
  const ResourcesSection({super.key});

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
          const CustomHeadingWidget(heading: "Resources"),
          const SizedBox(height: AppSize.md),
          Row(
            children: const [
              _FeaturesCard(
                label: "Gadgets",
                icon: LucideIcons.settings,
                item: ["Macbook air m5", "Lenovo Laptop", "Mobile Phone"],
              ),
              SizedBox(width: AppSize.sm),
              _FeaturesCard(
                label: "Tools",
                icon: LucideIcons.wrench,
                item: ["Vs Code", "XCode", "Android Studio"],
              ),
              SizedBox(width: AppSize.sm),
              _FeaturesCard(
                label: "Learning",
                icon: LucideIcons.bookOpen,
                item: ["Swift", "XCode", "Bloc"],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FeaturesCard extends StatelessWidget {
  const _FeaturesCard({
    required this.label,
    required this.icon,
    required this.item,
  });
  final String label;
  final IconData icon;
  final List<String> item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(AppSize.lg),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: AppColors.primary, size: AppSize.iconCm),
                const SizedBox(width: AppSize.sm),
                Text(
                  label,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontSize: AppSize.fontMd),
                ),
              ],
            ),
            const SizedBox(height: AppSize.sm),
            ...List.generate(item.length, (index) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(width: AppSize.sm),
                  Expanded(
                    child: Text(
                      item[index],
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
