import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppShadow {
  AppShadow._();

  /// Shadow for the search bar
  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
      color: AppColors.dark.withValues(alpha: 0.1),
      blurRadius: 2.0,
      spreadRadius: 4.0,
    ),
  ];
}
