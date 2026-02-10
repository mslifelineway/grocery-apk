import 'package:deshi_bazaar/common/product/cart/cart_counter_icon.dart';
import 'package:deshi_bazaar/common/widgets/appbar/custom_appbar.dart';
import 'package:deshi_bazaar/common/widgets/search_bar/app_search_bar.dart';
import 'package:deshi_bazaar/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class StorePrimaryHeader extends StatelessWidget {
  const StorePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// To provide space for the primary header
        SizedBox(height: AppSizes.storeHeaderHeight + 15),

        /// Primary Header Container
        PrimaryHeaderContainer(
          height: AppSizes.storeHeaderHeight,
          child: CustomAppBar(
            title: Text(
              AppTexts.store,
              style: Theme.of(context).textTheme.headlineMedium!.apply(
                color: AppColors.light,
              ), // Light color looks fine in dark and light background
            ),
            actions: [CartCounterIcon()],
          ),
        ),

        /// Search Bar
        AppSearchBar(),
      ],
    );
  }
}
