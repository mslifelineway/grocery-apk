import 'package:deshi_bazaar/common/widgets/texts/section_heading.dart';
import 'package:deshi_bazaar/features/personalization/screen/profile/widgets/profile_header.dart';
import 'package:deshi_bazaar/features/personalization/screen/profile/widgets/profile_tile.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Map<String, dynamic>> accountSettingsMenus = [
      {
        "title": AppTexts.myAddresses,
        "subtitle": AppTexts.setShoppingDeliveryAddresses,
        "leadingIcon": Iconsax.home,
      },
      {
        "title": AppTexts.myCart,
        "subtitle": AppTexts.myCartSubtitle,
        "leadingIcon": Iconsax.shopping_cart,
      },
      {
        "title": AppTexts.myOrders,
        "subtitle": AppTexts.myOrdersSubtitle,
        "leadingIcon": Iconsax.box,
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header part
            ProfileHeader(),
            SizedBox(height: AppSizes.spaceBetweenSections),

            /// Body part
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// User profile details
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.person),
                    title: Text(
                      StaticValues.testUserName,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    subtitle: Text(
                      StaticValues.testUserEmail,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Iconsax.edit),
                    ),
                  ),

                  SizedBox(height: AppSizes.spaceBetweenSections),

                  /// Account settings heading
                  SectionHeading(
                    title: AppTexts.accountSettings,
                    showAction: false,
                  ),

                  SizedBox(height: AppSizes.spaceBetweenItems / 2),

                  /// Account settings menus
                  ...accountSettingsMenus.map(
                    (menu) => ProfileTile(
                      title: menu['title'],
                      subtitle: menu['subtitle'],
                      leadingIcon: menu['leadingIcon'],
                    ),
                  ),

                  SizedBox(height: AppSizes.spaceBetweenSections),

                  /// Logout button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColors.primary),
                      ),
                      onPressed: () {},
                      child: Text(
                        AppTexts.logout,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),

                  SizedBox(height: AppSizes.spaceBetweenSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
