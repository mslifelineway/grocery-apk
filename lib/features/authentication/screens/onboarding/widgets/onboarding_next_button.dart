import 'package:deshi_bazaar/common/widgets/button/elevated_button.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:deshi_bazaar/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:get/get.dart';

class OnboardingNextButton extends StatelessWidget {
  OnboardingNextButton({super.key});

  final controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: AppSizes.defaultSpace,
      right: AppSizes.defaultSpace,
      bottom: AppSizes.spaceBetweenItems / 2,
      child: AppElevatedButton(
        onPressed: controller.handleNext,
        child: Obx(() => Text(controller.isLastPage ? 'Get Started' : 'Next')),
      ),
    );
  }
}
