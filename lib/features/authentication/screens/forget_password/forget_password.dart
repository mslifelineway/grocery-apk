import 'package:deshi_bazaar/common/styles/padding.dart';
import 'package:deshi_bazaar/features/authentication/screens/forget_password/widgets/forget_password_form.dart';
import 'package:deshi_bazaar/features/authentication/screens/forget_password/widgets/forget_password_header.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
            ForgetPasswordHeader(),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Form
            ForgetPasswordForm(),

            SizedBox(height: AppSizes.spaceBetweenSections),
          ],
        ),
      ),
    );
  }
}
