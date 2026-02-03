import 'package:flutter/material.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:deshi_bazaar/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:get/get.dart';

class OnboardingSkipButton extends StatelessWidget {
  OnboardingSkipButton({super.key});

  final controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLastPage ? SizedBox() : Positioned(
        top: DeviceUtils.getAppBarHeight(),
        right: 0,
        child: TextButton(onPressed: controller.handleSkip, child: Text('Skip')),
      ),
    );
  }
}
