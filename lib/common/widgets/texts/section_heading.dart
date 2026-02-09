import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.showAction = true,
    this.actionText = AppTexts.viewAll,
    this.onActionPressed,
  });

  final String title;
  final bool showAction;
  final String actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          if (showAction)
            TextButton(
              onPressed: onActionPressed,
              child: Text(
                actionText,
                style: Theme.of(context).textTheme.labelSmall!.apply(
                  color: DeviceUtils.isDarkMode
                      ? AppColors.light
                      : AppColors.dark.withValues(alpha: 0.6),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
