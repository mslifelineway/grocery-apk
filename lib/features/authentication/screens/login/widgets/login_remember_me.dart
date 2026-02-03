import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class LoginRememberMe extends StatelessWidget {
  const LoginRememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (val) {}),
            Text(AppTexts.rememberMe),
          ],
        ),
        Text(AppTexts.forgetPassword),
      ],
    );
  }
}
