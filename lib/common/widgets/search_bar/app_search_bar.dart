import 'package:deshi_bazaar/common/styles/shadow.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: AppSizes.spaceBetweenSections,
      right: AppSizes.spaceBetweenSections,
      child: Container(
        height: AppSizes.searchBarHeight,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
        decoration: BoxDecoration(
          color: DeviceUtils.isDarkMode ? AppColors.dark : AppColors.light,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          boxShadow: AppShadow.searchBarShadow,
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: AppColors.darkGrey),
            SizedBox(width: AppSizes.spaceBetweenItems),
            Text(
              AppTexts.searchProducts,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                color: AppColors.dark.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
