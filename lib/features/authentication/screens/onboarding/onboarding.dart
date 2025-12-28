import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import "package:deshi_bazaar/utils/constants/image_strings.dart";
import 'package:deshi_bazaar/features/authentication/screens/onboarding/widgets/onboarding.page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
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
        ],
      ),
    );
  }
}
