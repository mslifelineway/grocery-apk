import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  // variables
  final PageController pageController = PageController();
  RxInt currentIndex = 0.obs;

  final int totalPages = 3;

  void onPageChanged(dynamic index) {
    currentIndex.value = index;
  }

  void handleDotNavigationClick(dynamic index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void handleNextClick() {
    if (currentIndex.value < totalPages - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void handleSkipClick() {}

  bool get isLastPage => currentIndex.value == totalPages - 1;

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
