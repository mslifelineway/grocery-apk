import 'package:deshi_bazaar/common/widgets/appbar/custom_appbar.dart';
import 'package:deshi_bazaar/common/widgets/images/rounded_image.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/image_strings.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({super.key, required this.isFavorite});

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DeviceUtils.isDarkMode ? AppColors.dark : AppColors.cardLight,
      child: Stack(
        children: [
          /// Product thumbnail
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.xs),
              child: Center(
                child: Image(image: AssetImage(AppImages.blueShoe)),
              ),
            ),
          ),

          /// Product image slider
          Positioned(
            bottom: 0,
            left: AppSizes.defaultSpace,
            right: 0,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Number of images in the slider
                separatorBuilder: (context, index) =>
                    const SizedBox(width: AppSizes.spaceBetweenItems),
                itemBuilder: (context, index) {
                  return RoundedImage(
                    imageUrl: AppImages.blueShoe,
                    width: 80,
                    backgroundColor: DeviceUtils.isDarkMode
                        ? AppColors.dark
                        : AppColors.light,
                    border: Border.all(color: AppColors.primary),
                    padding: const EdgeInsets.all(AppSizes.xs),
                  );
                },
              ),
            ),
          ),

          /// AppBar
          CustomAppBar(
            showLeadingIcon: true,
            actions: [
              /// Favorite icon
              CircularIcon(
                iconData: isFavorite ? Iconsax.heart5 : Iconsax.heart,
                color: isFavorite ? Colors.red : null,
                onPressed: () {},
              ),

              SizedBox(width: AppSizes.spaceBetweenItems / 2),

              /// Share icon
              CircularIcon(iconData: Icons.share_outlined, onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
