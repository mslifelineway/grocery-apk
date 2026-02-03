import 'package:deshi_bazaar/common/styles/padding.dart';
import 'package:deshi_bazaar/common/widgets/button/social_buttons.dart';
import 'package:deshi_bazaar/features/authentication/screens/login/widgets/login_form.dart';
import 'package:deshi_bazaar/features/authentication/screens/login/widgets/login_header.dart';
import 'package:deshi_bazaar/features/authentication/screens/signup/signup.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deshi_bazaar/common/widgets/authentication/auth_form_divider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            LoginHeader(),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form
            LoginForm(),
            SizedBox(height: AppSizes.spaceBetweenItems),

            /// Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUp()),
                child: Text(AppTexts.createAccount),
              ),
            ),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form Divider
            AuthFormDivider(dividerText: AppTexts.orSignWith),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Social buttons
            SocialButtons(),
          ],
        ),
      ),
    );
  }
}
