import 'package:deshi_bazaar/common/widgets/shapes/rounded_container.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';

class ProductAttributeDetails extends StatelessWidget {
  const ProductAttributeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: EdgeInsets.all(AppSizes.md),
      backgroundColor: DeviceUtils.isDarkMode
          ? AppColors.light.withValues(alpha: 0.05)
          : AppColors.dark.withValues(alpha: 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.description,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          SizedBox(height: AppSizes.spaceBetweenItems / 2),

          Text(
            'Description and additional informations related UI will be designed here...',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
