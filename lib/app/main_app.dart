import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/custom_navbar_widget.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: const CustomNavbar(),
          ),
        ],
      ),
    );
  }
}
