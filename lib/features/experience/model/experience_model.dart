class ExperienceModel {
  final String companyName;
  final String jobTitle;
  final String duration;
  final String location;
  final List<String> techStack;
  final List<String> whatIDone;

  const ExperienceModel({
    required this.companyName,
    required this.jobTitle,
    required this.duration,
    required this.location,
    required this.techStack,
    required this.whatIDone,
  });
}

const List<ExperienceModel> experienceList = [
  ExperienceModel(
    companyName: "Lemmino",
    jobTitle: "Flutter Developer Intern",
    duration: "December 2025 - June 2026",
    location: "Remote",
    techStack: [
      "Flutter Web",
      "Provider",
      "Go Router",
      "Firebase",
      "Gemini API",
      "ElevenLabs API",
    ],
    whatIDone: [
      "Developed responsive web features using Flutter, contributing to the company's product interface.",
      "Ensured code quality by writing clean, scalable, and maintainable Flutter code.",
      "Analyzed Product requirements and implemented efficient solutions to enhance functionality and performance.",
      "Create and maintained Firebase Cloud Functions to handle backend processes and fix production issues."
          "Built API integration functions for ElevenLabs and Gemini.",
    ],
  ),
];
