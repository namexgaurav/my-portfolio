import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/custom_heading_widget.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_size.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

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
          const CustomHeadingWidget(heading: "Projects"),
          const SizedBox(height: AppSize.xl),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _ProjectCard(
                firstColor: const Color.fromARGB(155, 255, 185, 208),
                secondColor: const Color.fromARGB(155, 169, 198, 248),
                title: 'Cross-Platform Apps',
                num: 10,
              ),
              _ProjectCard(
                firstColor: const Color.fromARGB(155, 173, 146, 248),
                secondColor: const Color.fromARGB(155, 248, 169, 199),
                title: 'ios Apps',
                num: 2,
              ),
              _ProjectCard(
                firstColor: const Color.fromARGB(155, 208, 255, 185),
                secondColor: const Color.fromARGB(155, 169, 248, 247),
                title: 'Web Apps',
                num: 3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatefulWidget {
  final Color firstColor;
  final Color secondColor;
  final String title;
  final int num;
  const _ProjectCard({
    required this.firstColor,
    required this.secondColor,
    required this.title,
    required this.num,
  });

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 160,
            height: 120,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                AnimatedPositioned(
                  right: _isHovered ? -20 : -12,
                  top: _isHovered ? -20 : -12,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    width: 160,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.borderRadius),
                      color: widget.secondColor,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  right: _isHovered ? -10 : -6,
                  top: _isHovered ? -10 : -6,
                  child: Container(
                    width: 160,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.borderRadius),
                      color: widget.firstColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.borderRadius),
                    child: Image(
                      image: AssetImage("assets/image/projects/cover.jpg"),
                      fit: BoxFit.cover,
                      width: 160,
                      height: 120,
                    ),
                  ),
                ),

                AnimatedOpacity(
                  opacity: _isHovered ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.borderRadius),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          AppColors.black.withValues(alpha: 0.2),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.sm),
          Text(
            widget.title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontSize: AppSize.fontMd),
          ),
          Text(
            "(${widget.num.toString()})",
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontSize: AppSize.fontMd),
          ),
        ],
      ),
    );
  }
}
