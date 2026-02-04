import 'package:deshi_bazaar/common/styles/padding.dart';
import 'package:deshi_bazaar/common/widgets/authentication/auth_form_divider.dart';
import 'package:deshi_bazaar/common/widgets/button/social_buttons.dart';
import 'package:deshi_bazaar/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:deshi_bazaar/features/authentication/screens/signup/widgets/signup_header.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///Header
            SignUpHeader(),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form
            SignUpForm(),

            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form Divider
            AuthFormDivider(dividerText: AppTexts.orSignupWith),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Social buttons
            SocialButtons(),
          ],
        ),
      ),
    );
  }
}
