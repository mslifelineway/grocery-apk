import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = DeviceUtils.isDarkMode();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// User Name
        Text(
          AppTexts.testUserName,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
            color: isDarkMode ? AppColors.light : AppColors.dark,
          ),
        ),

        /// Location
        Row(
          children: [
            /// Location Icon
            Icon(
              Icons.location_on,
              color: isDarkMode ? AppColors.light : AppColors.dark,
              size: AppSizes.iconSm,
            ),
            SizedBox(width: AppSizes.xs),

            /// Location
            Text(
              AppTexts.testLocation,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                color: isDarkMode ? AppColors.light : AppColors.dark,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
