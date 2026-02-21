import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// User Name
        Text(
          StaticValues.testUserName,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
            color: AppColors.light,
          ), // Light color looks fine in dark and light background
        ),

        /// Location
        Row(
          children: [
            /// Location Icon
            Icon(
              Icons.location_on,
              color: AppColors.light,
              size: AppSizes.iconSm,
            ),
            SizedBox(width: AppSizes.xs),

            /// Location
            Text(
              StaticValues.testLocation,
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.apply(color: AppColors.light),
            ),
          ],
        ),
      ],
    );
  }
}
