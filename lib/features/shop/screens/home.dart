import 'package:deshi_bazaar/common/widgets/search_bar/app_search_bar.dart';
import 'package:deshi_bazaar/common/widgets/shapes/circular_container.dart';
import 'package:deshi_bazaar/features/shop/screens/widgets/home_appbar.dart';
import 'package:deshi_bazaar/features/shop/screens/widgets/home_categories.dart';
import 'package:deshi_bazaar/features/shop/screens/widgets/primary_header_container.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            /// To provide space for the primary header
            SizedBox(height: AppSizes.primaryHeaderHeight + 15),

            /// Primary Header Container
            PrimaryHeaderContainer(
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
        ),
      ),
    );
  }
}
