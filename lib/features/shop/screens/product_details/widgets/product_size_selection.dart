import 'package:flutter/material.dart';

import '../../../../../common/widgets/chiips/custom_choice_chip.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductChoiceSelection extends StatelessWidget {
  const ProductChoiceSelection({
    super.key,
    required this.title,
    required this.onSelected,
    required this.choices,
  });

  final String title;
  final Function(bool?) onSelected;
  final List<Map<String, dynamic>> choices;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: title, showAction: false),

        SizedBox(height: AppSizes.spaceBetweenItems),

        Wrap(
          spacing: AppSizes.xs,
          children: choices
              .map(
                (choice) => CustomChoiceChip(
                  text: choice['text'],
                  selected: choice['selected'],
                  onSelected: onSelected,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
