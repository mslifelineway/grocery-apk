import 'package:deshi_bazaar/features/shop/screens/home/home.dart';
import 'package:deshi_bazaar/features/shop/screens/store/store.dart';
import 'package:deshi_bazaar/features/shop/screens/wishlist/wishlist.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(
        () => controller.screens.elementAt(controller.selectedIndex.value),
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: controller.onDestinationSelected,
          indicatorColor: DeviceUtils.isDarkMode
              ? AppColors.bgLight.withAlpha(25)
              : AppColors.bgDark.withAlpha(25),
          backgroundColor: DeviceUtils.isDarkMode
              ? AppColors.bgDark
              : AppColors.bgLight,
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: AppTexts.home,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.category),
              label: AppTexts.categories,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.box),
              label: AppTexts.orders,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shopping_cart),
              label: AppTexts.cart,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: AppTexts.profile,
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> screens = <Widget>[
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    Container(),
  ];

  void onDestinationSelected(int index) {
    selectedIndex.value = index;
  }
}
