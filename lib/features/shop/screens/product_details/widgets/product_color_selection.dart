import 'package:flutter/material.dart';

import '../../../../../common/widgets/chiips/custom_choice_chip.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class ProductColorSelection extends StatelessWidget {
  const ProductColorSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: AppTexts.colors, showAction: false),

        SizedBox(height: AppSizes.spaceBetweenItems),

        Wrap(
          spacing: AppSizes.xs,
          children: [
            CustomChoiceChip(
              text: 'Red',
              selected: true,
              onSelected: (value) {},
            ),
            CustomChoiceChip(
              text: 'Blue',
              selected: false,
              onSelected: (value) {},
            ),
          ],
        ),
      ],
    );
  }
}
