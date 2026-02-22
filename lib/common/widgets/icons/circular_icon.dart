import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.size = AppSizes.iconMd,
    this.iconData,
    this.backgroundColor,
    this.color,
    this.onPressed,
  });

  final double? size;
  final IconData? iconData;
  final Color? backgroundColor, color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (DeviceUtils.isDarkMode
                ? AppColors.light.withValues(alpha: 0.1)
                : AppColors.dark.withValues(alpha: 0.1)),
        borderRadius: BorderRadius.circular(
          1000,
        ), // Large value to ensure it's circular
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          iconData,
          color:
              color ??
              (DeviceUtils.isDarkMode ? AppColors.light : AppColors.dark),
          size: size,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
