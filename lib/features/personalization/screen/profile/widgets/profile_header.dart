import 'package:deshi_bazaar/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/user_profile_logo.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// To provide space for the primary header
        SizedBox(height: AppSizes.profileHeaderHeight + 60),

        /// Primary Header Container
        PrimaryHeaderContainer(height: AppSizes.profileHeaderHeight),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(child: UserProfileLogo()),
        ),
      ],
    );
  }
}
