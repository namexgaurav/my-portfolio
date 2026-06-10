import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/common/widgets/available_text_widget.dart';
import 'package:my_portfolio/common/widgets/custom_heading_widget.dart';
import 'package:my_portfolio/core/constants/app_colors.dart';
import 'package:my_portfolio/core/constants/app_size.dart';
import 'package:my_portfolio/features/contact_us/models/contact_model.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.sectionPaddingLg * 4,
        vertical: AppSize.lg,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeadingWidget(heading: "Contact us"),
          const SizedBox(height: AppSize.md),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSize.lg),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: BorderRadius.circular(
                            AppSize.borderRadius,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AvailableText(),
                            const SizedBox(height: AppSize.md),

                            ...contactList.map(
                              (item) => _ContactRow(
                                label: item.lable,
                                icon: item.icon,
                                width: item.width,
                                height: item.height,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSize.md),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(AppSize.lg),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                          borderRadius: BorderRadius.circular(
                            AppSize.borderRadius,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "response time",
                              style: TextStyle(
                                color: AppColors.secondary,
                                fontWeight: FontWeight.w300,
                                fontSize: AppSize.fontXs,
                              ),
                            ),
                            const SizedBox(height: AppSize.sm),
                            Text(
                              "Usually within 24 hours",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: AppSize.md),
                Expanded(flex: 1, child: _ContactForm()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactForm extends StatelessWidget {
  const _ContactForm();

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController messageController = TextEditingController();
    return Container(
      padding: const EdgeInsets.all(AppSize.lg),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).colorScheme.outline),
        borderRadius: BorderRadius.circular(AppSize.borderRadius),
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: TextStyle(
                color: AppColors.secondary,
                fontWeight: FontWeight.w400,
                fontSize: AppSize.fontXs,
              ),
            ),
            const SizedBox(height: AppSize.xs),
            _ContactTextField(controller: nameController),
            const SizedBox(height: AppSize.sm),
            Text(
              "Email",
              style: TextStyle(
                color: AppColors.secondary,
                fontWeight: FontWeight.w400,
                fontSize: AppSize.fontXs,
              ),
            ),
            const SizedBox(height: AppSize.xs),
            _ContactTextField(controller: emailController),
            const SizedBox(height: AppSize.sm),
            Text(
              "Message",
              style: TextStyle(
                color: AppColors.secondary,
                fontWeight: FontWeight.w400,
                fontSize: AppSize.fontXs,
              ),
            ),
            const SizedBox(height: AppSize.xs),
            _ContactTextField(
              controller: messageController,
              minLines: 2,
              maxLines: 3,
            ),
            const SizedBox(height: AppSize.md),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.md,
                vertical: AppSize.sm,
              ),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(AppSize.borderRadius),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Send Message",
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: AppSize.fontXs,
                    ),
                  ),
                  const SizedBox(width: AppSize.sm),
                  Icon(
                    Icons.send,
                    color: AppColors.white,
                    size: AppSize.iconXs,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactTextField extends StatelessWidget {
  final int? minLines;
  final int? maxLines;
  final TextEditingController controller;

  const _ContactTextField({
    this.minLines = 1,
    this.maxLines = 1,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context).textTheme.bodyMedium,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
        ),
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  final String label;
  final String icon;
  final double width;
  final double height;
  const _ContactRow({
    required this.label,
    required this.icon,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: width,
            height: height,
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
          ),
          const SizedBox(width: AppSize.sm),
          Text(
            label,
            style: TextStyle(
              color: AppColors.secondary,
              fontWeight: FontWeight.w600,
              fontSize: AppSize.fontSm,
            ),
          ),
        ],
      ),
    );
  }
}
