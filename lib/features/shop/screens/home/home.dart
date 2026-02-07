import 'package:deshi_bazaar/common/product/cart/product_card_vertical.dart';
import 'package:deshi_bazaar/common/widgets/carousel/banner_slider.dart';
import 'package:deshi_bazaar/common/widgets/layouts/grid_layoute.dart';
import 'package:deshi_bazaar/common/widgets/texts/section_heading.dart';
import 'package:deshi_bazaar/features/shop/controllers/banner_slider.controller.dart';
import 'package:deshi_bazaar/features/shop/screens/home/widgets/home_header.dart';
import 'package:deshi_bazaar/utils/constants/image_strings.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BannerSliderController(total: 4));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header part
            HomeHeader(),

            /// Banner slider
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: BannerSlider(
                bannerImages: [
                  AppImages.banner1,
                  AppImages.banner2,
                  AppImages.banner3,
                  AppImages.banner3,
                ],
              ),
            ),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Product List Section
            //Section Heading
            SectionHeading(title: AppTexts.products),

            /// Vertical product grid view
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.xs,
              ),
              child: GridLayout(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ProductCardVertical(
                    imageUrl: AppImages.banner1,
                    isNetworkImage: false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
