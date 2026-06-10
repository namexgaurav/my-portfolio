import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/custom_heading_widget.dart';
import 'package:my_portfolio/common/widgets/custom_tech_stack_container_widget.dart';
import 'package:my_portfolio/core/constants/app_size.dart';
import 'package:my_portfolio/features/tech_stack/models/tech_stack_models.dart';

class TechStackSection extends StatelessWidget {
  const TechStackSection({super.key});

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
          const CustomHeadingWidget(heading: "Tech Stack"),
          const SizedBox(height: AppSize.md),
          Wrap(
            spacing: AppSize.sm,
            runSpacing: AppSize.sm,
            children: List.generate(techStackList.length, (index) {
              return TechStackContainer(label: techStackList[index]);
            }),
          ),
        ],
      ),
    );
  }
}
