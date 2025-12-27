import "package:flutter/material.dart";

class AppColors {
  AppColors._();

  //Basic colors
  static const Color primary = Color(0xFF0CA201);
  static const Color secondary = Color(0xFFFFDB24);
  static const Color accent = Color(0xFFB0C7FF);

  //Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.5, -0.5),
    colors: [Color(0xFF0CA201), Color(0xFFFFDB24), Color(0xFF0CA201)],
  );

  //Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textAccent = Colors.white;

  //Background Colors
  static const Color bgLight = Color(0xFFF6F6F6);
  static const Color bgDark = Color(0xFF272727);
  static const Color bgPrimary = Color(0xFFF3F5FF);

  //Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Color(0xFF474747);

  //Button Colors
  static const Color btnPrimary = Color(0xFF0CA201);
  static const Color btnSecondary = Color(0xFFFFDB24);
  static const Color btnDisabled = Color(0xFFC4C4C4);

  //Border Colors
  static const Color borderPrimary = Color(0xFFB6B2B1);
  static const Color borderSecondary = Color(0xFFECECEC);

  //Error and validations colors
  static const Color error = Color(0xFFEB001B);
  static const Color success = Color(0xFF0CA201);
  static const Color warning = Color(0xFFF79E1B);
  static const Color info = Color(0xFF2CB6E7);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkGrey = Color(0xFF4F4F4F);
  static const Color darkerGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
}
