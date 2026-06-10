import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/custom_navbar_widget.dart';
import 'package:my_portfolio/features/about_section.dart';
import 'package:my_portfolio/features/contact_us/contact_us_section.dart';
import 'package:my_portfolio/features/experience/experience_section.dart';
import 'package:my_portfolio/features/feedback/feedback_section.dart';
import 'package:my_portfolio/features/projects/project_section.dart';
import 'package:my_portfolio/features/resources/resources_section.dart';
import 'package:my_portfolio/features/tech_stack/tech_stack_section.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AboutSection(),
                ExperienceSection(),
                TechStackSection(),
                ProjectSection(),
                FeedbackSection(),
                ResourcesSection(),
                ContactUsSection(),
              ],
            ),
          ),
          Align(alignment: Alignment.topCenter, child: const CustomNavbar()),
        ],
      ),
    );
  }
}
