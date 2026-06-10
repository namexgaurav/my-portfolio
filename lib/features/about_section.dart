import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/available_text_widget.dart';
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
                  // border: Border.all(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(AppSize.borderRadiusLg),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.borderRadiusLg),
                  child: Image(
                    image: AssetImage("assets/image/self/self.jpeg"),
                    fit: BoxFit.cover,
                  ),
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
                  const AvailableText(),
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
