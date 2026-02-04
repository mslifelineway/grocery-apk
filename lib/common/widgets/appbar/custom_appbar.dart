import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/device/device.utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.showLeadingIcon = false,
    this.leading,
    this.title,
    this.actions,
    this.onLeadingIconPressed,
    this.leadingIcon,
  });

  final bool showLeadingIcon;
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final VoidCallback? onLeadingIconPressed;
  final IconData? leadingIcon;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = DeviceUtils.isDarkMode();

    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: AppSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,

        /// Leading Widget
        leading: showLeadingIcon
            ? IconButton(
                icon: Icon(
                  Iconsax.arrow_left,
                  color: isDarkMode ? AppColors.light : AppColors.dark,
                ),
                onPressed: Get.back,
              )
            : leadingIcon != null
            ? IconButton(
                icon: Icon(
                  leadingIcon,
                  color: isDarkMode ? AppColors.light : AppColors.dark,
                ),
                onPressed: onLeadingIconPressed,
              )
            : leading,

        /// Title Widget
        title: title,

        /// Action Widgets
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
