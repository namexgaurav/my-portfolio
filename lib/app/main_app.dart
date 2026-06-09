import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/custom_navbar_widget.dart';
import 'package:my_portfolio/features/about_section.dart';
import 'package:my_portfolio/features/contact_us_section.dart';
import 'package:my_portfolio/features/experience_section.dart';
import 'package:my_portfolio/features/feedback_section.dart';
import 'package:my_portfolio/features/project_section.dart';
import 'package:my_portfolio/features/resources_section.dart';
import 'package:my_portfolio/features/tech_stack_section.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: const[
                AboutSection(),
                ExperienceSection(),
                TechStackSection(),
                ProjectSection(),
                FeedbackSection(),
                ResourcesSection(),
                ContactUsSection()
                
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: const CustomNavbar(),
          ),
        ],
      ),
    );
  }
}
