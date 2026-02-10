import 'package:deshi_bazaar/common/product/cart/product_card_vertical.dart';
import 'package:deshi_bazaar/common/widgets/carousel/banner_slider.dart';
import 'package:deshi_bazaar/common/widgets/layouts/grid_layout.dart';
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

    final List<String> banners = [
      AppImages.banner1,
      AppImages.banner2,
      AppImages.banner3,
      AppImages.banner3,
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header part
            HomeHeader(),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Banner slider
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: BannerSlider(bannerImages: banners),
            ),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Product List Section
            //Section Heading
            SectionHeading(title: AppTexts.products),

            /// Vertical product grid view
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: GridLayout(
                itemCount: 20,
                mainAxisExtent:
                    AppSizes.gridViewMainAxisExtent -
                    88, // Looking too big, so reducing by some value. Later it may be removed.
                itemBuilder: (context, index) {
                  return ProductCardVertical(
                    imageUrl:
                        banners[index >= banners.length
                            ? ((index % banners.length)).toInt()
                            : index],
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
