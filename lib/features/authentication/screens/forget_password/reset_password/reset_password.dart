import 'package:deshi_bazaar/common/styles/padding.dart';
import 'package:deshi_bazaar/common/widgets/button/elevated_button.dart';
import 'package:deshi_bazaar/features/authentication/screens/forget_password/forget_password.dart';
import 'package:deshi_bazaar/features/authentication/screens/login/login.dart';
import 'package:deshi_bazaar/utils/constants/image_strings.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => Login()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Illustration Image
            Image.asset(
              AppImages.passwordResetSentImage,
              height:
                  DeviceUtils.getScreenHeight() * 0.3, // 30% of screen height
            ),
            SizedBox(height: AppSizes.spaceBetweenItems),

            ///Header
            Text(
              AppTexts.resetPasswordTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: AppSizes.spaceBetweenItems),

            /// Password Reset Info
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: [
                  TextSpan(text: AppTexts.passwordResetLinkSent),
                  TextSpan(
                    text: " ${AppTexts.testUserEmail}. ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(text: AppTexts.checkYourInbox),
                ],
              ),
            ),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Done Button
            AppElevatedButton(
              onPressed: () => Get.offAll(() => Login()),
              child: Text(AppTexts.done),
            ),
            SizedBox(height: AppSizes.spaceBetweenItems / 2),

            /// Resend Email button
            Center(
              child: TextButton(
                onPressed: () => Get.offAll(() => ForgetPassword()),
                child: Text(
                  AppTexts.resendEmail,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
