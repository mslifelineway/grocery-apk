import 'package:deshi_bazaar/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:deshi_bazaar/features/authentication/screens/onboarding/widgets/onbarding_dot_navigation.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import "package:deshi_bazaar/utils/constants/image_strings.dart";
import 'package:deshi_bazaar/features/authentication/screens/onboarding/widgets/onboarding.page.dart';
import 'package:get/get.dart';
import "./widgets/onboarding_next_button.dart";
import "./widgets/onboarding_skip_button.dart";
import 'package:deshi_bazaar/common/styles/padding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Stack(
            children: [
              // Scrollable page
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                physics: const PageScrollPhysics(),
                children: [
                  OnboardingPage(
                    animation: AppImages.onboardingAnimation1,
                    title: AppTexts.onBoardingTitle1,
                    subTitle: AppTexts.onBoardingSubTitle1,
                  ),
                  OnboardingPage(
                    animation: AppImages.onboardingAnimation2,
                    title: AppTexts.onBoardingTitle2,
                    subTitle: AppTexts.onBoardingSubTitle2,
                  ),
                  OnboardingPage(
                    animation: AppImages.onboardingAnimation3,
                    title: AppTexts.onBoardingTitle3,
                    subTitle: AppTexts.onBoardingSubTitle3,
                  ),
                ],
              ),

              // Indicator
              OnboardingDotNavigation(),

              // Skip button
              OnboardingSkipButton(),

              // Navigation Controller button
              OnboardingNextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
