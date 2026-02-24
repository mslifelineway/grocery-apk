import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/button/bottom_action_bar.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductActionBar extends StatelessWidget {
  const ProductActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomActionBar(
      key: key,
      leftActions: [
        CircularIcon(
          iconData: Icons.add_shopping_cart_outlined,
          onPressed: () {},
        ),
      ],
      rightActions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.md,
              vertical: AppSizes.sm,
            ),
          ),
          onPressed: () {},
          child: Text(AppTexts.buyNow),
        ),
      ],
    );
  }
}
