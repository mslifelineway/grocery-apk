import 'package:deshi_bazaar/features/shop/controllers/banner_slider.controller.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSliderDotNavigation extends StatelessWidget {
  const BannerSliderDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final BannerSliderController controller = Get.find<BannerSliderController>();

    return Center(
      child: Obx(
        () => AnimatedSmoothIndicator(
          activeIndex: controller.currentIndex.value,
          onDotClicked: controller.onDotClicked,
          count: controller.total,
          effect: const ExpandingDotsEffect(
            dotHeight: 6.0,
            dotWidth: AppSizes.defaultSpace,
          ),
        ),
      ),
    );
  }
}
