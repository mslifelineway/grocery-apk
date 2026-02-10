import 'package:deshi_bazaar/common/widgets/search_bar/app_search_bar.dart';
import 'package:deshi_bazaar/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:deshi_bazaar/features/shop/screens/home/widgets/home_categories.dart';
import 'package:deshi_bazaar/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// To provide space for the primary header
        SizedBox(height: AppSizes.homeHeaderHeight + 15),

        /// Primary Header Container
        PrimaryHeaderContainer(
          height: AppSizes.homeHeaderHeight,
          child: Column(
            children: [
              //Home App Bar
              HomeAppBar(),
              SizedBox(height: AppSizes.spaceBetweenSections),

              /// Home Popular Categories
              HomeCategories(),
            ],
          ),
        ),

        /// Search Bar
        AppSearchBar(),
      ],
    );
  }
}
