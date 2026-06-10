import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_portfolio/common/widgets/custom_heading_widget.dart';
import 'package:my_portfolio/common/widgets/custom_tech_stack_container_widget.dart';
import 'package:my_portfolio/core/constants/app_size.dart';
import 'package:my_portfolio/features/experience/model/experience_model.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
          const CustomHeadingWidget(heading: "Experience"),
          const SizedBox(height: AppSize.lg),
          ...experienceList.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            return Padding(
              padding: const EdgeInsets.only(bottom: AppSize.lg),
              child: _ExperienceBox(
                companyName: item.companyName,
                jobTitle: item.jobTitle,
                duration: item.duration,
                location: item.location,
                techStack: item.techStack,
                whatIDone: item.whatIDone,
                index: index,
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _ExperienceBox extends StatefulWidget {
  final String companyName;
  final String jobTitle;
  final String duration;
  final String location;
  final List<String> techStack;
  final List<String> whatIDone;
  final int index;

  const _ExperienceBox({
    required this.companyName,
    required this.jobTitle,
    required this.duration,
    required this.location,
    required this.techStack,
    required this.whatIDone,
    required this.index,
  });

  @override
  State<_ExperienceBox> createState() => _ExperienceBoxState();
}

class _ExperienceBoxState extends State<_ExperienceBox> {
  late bool _isExpend;
  bool _isIconHover = false;
  bool _isHover = false;

  @override
  void initState() {
    super.initState();
    _isExpend = widget.index == 0 ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHover = true),
      onExit: (_) => setState(() => _isHover = false),
      child: AnimatedSize(
        alignment: Alignment.topCenter,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 400),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.companyName,
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(fontSize: AppSize.fontLg),
                        ),
                        if (_isHover || _isExpend) ...[
                          const SizedBox(width: AppSize.md),
                          MouseRegion(
                            onEnter: (_) => setState(() => _isIconHover = true),
                            onExit: (_) => setState(() => _isIconHover = false),
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () =>
                                  setState(() => _isExpend = !_isExpend),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.easeInOut,
                                padding: const EdgeInsets.all(AppSize.mini),
                                decoration: BoxDecoration(
                                  color: _isIconHover || _isExpend
                                      ? Theme.of(context)
                                            .colorScheme
                                            .onSurfaceVariant
                                            .withValues(alpha: 0.07)
                                      : null,
                                  borderRadius: BorderRadius.circular(
                                    AppSize.sm,
                                  ),
                                ),
                                child: Icon(
                                  _isExpend
                                      ? LucideIcons.chevronDown
                                      : LucideIcons.chevronRight,
                                  color: _isIconHover || _isExpend
                                      ? Theme.of(
                                          context,
                                        ).colorScheme.onSecondary
                                      : Theme.of(
                                          context,
                                        ).colorScheme.onSurfaceVariant,
                                  size: AppSize.iconCm,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: AppSize.sm),
                    Text(
                      widget.jobTitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.duration,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      widget.location,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            if (_isExpend) ...[
              const SizedBox(height: AppSize.lg),
              Divider(color: Theme.of(context).colorScheme.outline),
              const SizedBox(height: AppSize.lg),
              Text(
                "Technologies & Tools",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontSize: AppSize.fontSm),
              ),
              const SizedBox(height: AppSize.md),
              Wrap(
                spacing: AppSize.sm,
                runSpacing: AppSize.sm,
                children: List.generate(widget.techStack.length, (index) {
                  return TechStackContainer(label: widget.techStack[index]);
                }),
              ),
              const SizedBox(height: AppSize.lg),
              Text(
                "What I've done",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontSize: AppSize.fontSm),
              ),
              const SizedBox(height: AppSize.md),
              ...List.generate(widget.whatIDone.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: AppSize.sm),
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: AppSize.sm),
                      Expanded(
                        child: Text(
                          widget.whatIDone[index],
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ],
        ),
      ),
    );
  }
}
