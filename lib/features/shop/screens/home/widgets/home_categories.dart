import 'package:deshi_bazaar/common/widgets/images/vertical_image_text.dart';
import 'package:deshi_bazaar/utils/constants/colors.dart';
import 'package:deshi_bazaar/utils/constants/image_strings.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSizes.spaceBetweenSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Popular Categories Text
          Text(
            AppTexts.popularCategories,
            textAlign: TextAlign.start,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: AppColors.light),
          ),
          SizedBox(height: AppSizes.spaceBetweenItems),

          /// Categories List
          SizedBox(
            height: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  SizedBox(width: AppSizes.spaceBetweenItems),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return VerticalImageText(
                  categoryImage: AppImages.categoryImg,
                  categoryName: AppTexts.fruits,
                  index: index,
                  textColor: AppColors.light,
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
