import 'package:deshi_bazaar/common/widgets/button/elevated_button.dart';
import 'package:deshi_bazaar/features/authentication/screens/login/widgets/login_remember_me.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: AppTexts.email,
          ),
        ),
        SizedBox(height: AppSizes.spaceBetweenInputFields),

        /// Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: AppTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),

        SizedBox(height: AppSizes.spaceBetweenInputFields / 2),

        /// Remember Me & Forget password
        LoginRememberMe(),
        SizedBox(height: AppSizes.spaceBetweenSections),

        /// Sign In Button
        AppElevatedButton(onPressed: () {}, child: Text(AppTexts.signIn)),
      ],
    );
  }
}
