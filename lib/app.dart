import 'package:flutter/material.dart';
import 'package:deshi_bazaar/utils/theme/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:deshi_bazaar/features/authentication/screens/onboarding/onboarding.dart';

//-- USE THIS CLASS TO SETUP THEMES, INITIAL BINDINGS, ANY ANIMATIONS, AND MUCH MORE ------
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
