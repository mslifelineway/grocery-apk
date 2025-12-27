import 'package:flutter/material.dart';
import 'package:deshi_bazaar/utils/theme/theme.dart';

//-- USE THIS CLASS TO SETUP THEMES, INITIAL BINDINGS, ANY ANIMATIONS, AND MUCH MORE ------
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Scaffold(body: Text('Welcome to Grocery App!')),
    );
  }
}
