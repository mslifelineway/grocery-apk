import 'package:deshi_bazaar/common/widgets/images/rounded_image.dart';
import 'package:deshi_bazaar/common/widgets/texts/product_title.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/shapes/rounded_container.dart';
import '../../../../../common/widgets/texts/brand_title.dart';
import '../../../../../common/widgets/texts/product_price.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class ProductMetaDataDetails extends StatelessWidget {
  const ProductMetaDataDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Product Pricing and Discount
        Row(
          children: [
            /// Sale tag
            RoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.primary.withValues(alpha: 0.9),
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.sm,
                vertical: AppSizes.xs,
              ),
              child: Text(
                AppTexts.testDiscountValue,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.light,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(width: AppSizes.spaceBetweenItems / 2),

            /// Sale price
            ProductPrice(
              price: StaticValues.product['price']!,
              lineThrough: true,
            ),

            SizedBox(width: AppSizes.spaceBetweenItems / 2),

            /// Actual Price
            ProductPrice(
              price: StaticValues.product['price']!,
              smallSize: false,
            ),
          ],
        ),

        SizedBox(height: AppSizes.spaceBetweenItems),

        ProductTitle(title: StaticValues.product['name'] as String),
        SizedBox(height: AppSizes.spaceBetweenItems / 2),

        Row(
          children: [
            Text('Status', style: Theme.of(context).textTheme.labelMedium),
            SizedBox(width: AppSizes.spaceBetweenItems / 2),
            Text('In Stock', style: Theme.of(context).textTheme.labelLarge!),
          ],
        ),
        SizedBox(height: AppSizes.spaceBetweenItems / 2),

        /// Brand
        Row(
          children: [
            RoundedImage(
              width: 44.0,
              imageUrl: AppImages.bataLogoImage,
              backgroundColor: Colors.transparent,
            ),
            SizedBox(width: AppSizes.spaceBetweenItems / 2),
            BrandTitle(title: StaticValues.product['brand'] as String),
          ],
        ),
      ],
    );
  }
}
