import 'package:deshi_bazaar/common/widgets/appbar/custom_appbar.dart';
import 'package:deshi_bazaar/common/widgets/search_bar/app_search_bar.dart';
import 'package:deshi_bazaar/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class WishlistPrimaryHeader extends StatelessWidget {
  const WishlistPrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// To provide space for the primary header
        SizedBox(height: AppSizes.wishlistHeaderHeight + 15),

        /// Primary Header Container
        PrimaryHeaderContainer(
          height: AppSizes.wishlistHeaderHeight,
          child: CustomAppBar(
            title: Text(
              AppTexts.wishlist,
              style: Theme.of(context).textTheme.headlineMedium!.apply(
                color: AppColors.light,
              ), // Light color looks fine in dark and light background
            ),
            actions: [],
          ),
        ),

        /// Search Bar
        AppSearchBar(),
      ],
    );
  }
}
