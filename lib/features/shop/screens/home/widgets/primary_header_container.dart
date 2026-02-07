import 'package:deshi_bazaar/common/widgets/shapes/circular_container.dart';
import 'package:deshi_bazaar/common/widgets/shapes/u_shape_container.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return UShapeContainer(
      child: Container(
        color: AppColors.bgPrimary,
        height: AppSizes.primaryHeaderHeight,
        child: Stack(
          children: [
            /// Decorative Circular Containers
            Positioned(
              top: -150,
              right: -160,
              child: CircularContainer(
                backgroundColor: AppColors.bgLight.withValues(alpha: 0.1),
                height: AppSizes.primaryHeaderHeight,
                width: AppSizes.primaryHeaderHeight,
              ),
            ),

            ///  Decorative Circular Containers
            Positioned(
              bottom: -50,
              right: -250,
              child: CircularContainer(
                backgroundColor: AppColors.bgLight.withValues(alpha: 0.1),
                height: AppSizes.primaryHeaderHeight,
                width: AppSizes.primaryHeaderHeight,
              ),
            ),

            /// Child Widget
            ?child,
          ],
        ),
      ),
    );
  }
}
