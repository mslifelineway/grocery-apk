import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: DeviceUtils.getScreenWidth(), // now SAFE
      child: ElevatedButton(onPressed: onPressed, child: child),
    );
  }
}
