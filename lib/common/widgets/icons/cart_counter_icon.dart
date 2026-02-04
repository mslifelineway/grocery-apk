import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key, this.itemCount = 0});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Iconsax.bag_2,
          color: DeviceUtils.isDarkMode() ? AppColors.light : AppColors.dark,
          size: AppSizes.iconLg,
        ),
        itemCount > 0
            ? Positioned(
                right: 0,
                child: Container(
                  width: AppSizes.iconSm,
                  height: AppSizes.iconSm,
                  decoration: BoxDecoration(
                    color: DeviceUtils.isDarkMode()
                        ? AppColors.bgDark
                        : AppColors.bgLight,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      itemCount.toString(),
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: DeviceUtils.isDarkMode()
                            ? AppColors.light
                            : AppColors.dark,
                        fontSizeFactor: 0.8,
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
