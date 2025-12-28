import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import "package:deshi_bazaar/utils/constants/image_strings.dart";
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subTitle,
  });

  final String animation;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(AppImages.onboardingAnimation1),
          Text(
            AppTexts.onBoardingTitle1,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            AppTexts.onBoardingSubTitle1,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
