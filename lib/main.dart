import 'package:flutter/material.dart';
import 'package:my_portfolio/app/app_theme_provider.dart';
import 'package:my_portfolio/app/main_app.dart';
import 'package:my_portfolio/core/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AppThemeProvider>(
    create: (BuildContext context) => AppThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = context.watch<AppThemeProvider>().theme;
    return MaterialApp(
      title: 'Gaurav Sharma - Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: theme,
      theme: AppTheme.light,  
      darkTheme: AppTheme.dark,
      home: const MainApp(),
    );
  }
}