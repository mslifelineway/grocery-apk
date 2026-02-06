import 'package:deshi_bazaar/common/widgets/carousel/banner_slider.dart';
import 'package:deshi_bazaar/features/shop/controllers/banner_slider.controller.dart';
import 'package:deshi_bazaar/features/shop/screens/home/widgets/home_header.dart';
import 'package:deshi_bazaar/utils/constants/image_strings.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
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

            /// Body part
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: BannerSlider(
                bannerImages: [
                  AppImages.banner1,
                  AppImages.banner2,
                  AppImages.banner3,
                  AppImages.banner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
