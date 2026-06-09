import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_size.dart';

class CustomHeadingWidget extends StatelessWidget {
  final String heading;
  const CustomHeadingWidget({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(
        context,
      ).textTheme.titleLarge!.copyWith(fontSize: AppSize.fontXl),
    );
  }
}
