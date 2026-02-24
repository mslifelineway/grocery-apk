import 'package:deshi_bazaar/common/styles/padding.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/product_action_bar.dart';
import 'widgets/product_attribute_details.dart';
import 'widgets/product_details_header.dart';
import 'widgets/product_metadata_details.dart';
import 'widgets/product_size_selection.dart' show ProductChoiceSelection;

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  final bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    void onColorSelected(bool? value) {
      // Handle color selection logic here
      debugPrint('Color selected: $value');
    }

    void onSizeSelected(bool? value) {
      // Handle size selection logic here
      debugPrint('Size selected: $value');
    }

    List<Map<String, dynamic>> choiceChips = [
      {
        "selection": AppTexts.colors,
        'onSelected': onColorSelected,
        "choices": [
          {'text': 'Red', 'selected': true},
          {'text': 'Blue', 'selected': false},
        ],
      },
      {
        "selection": AppTexts.sizes,
        'onSelected': onSizeSelected,
        "choices": [
          {'text': 'Small', 'selected': true},
          {'text': 'Medium', 'selected': false},
          {'text': 'Large', 'selected': false},
        ],
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image with slider
            ProductDetailsHeader(isFavorite: isFavorite),

            Padding(
              padding: AppPadding.screenPadding,
              child: Column(
                children: [
                  /// Product info
                  ProductMetaDataDetails(),
                  SizedBox(height: AppSizes.spaceBetweenItems),

                  /// Product attributes variants etc.
                  ProductAttributeDetails(),
                  SizedBox(height: AppSizes.spaceBetweenItems),

                  /// Colors selection
                  ...choiceChips.asMap().entries.map(
                    (entry) => Column(
                      children: [
                        if (entry.key != 0)
                          SizedBox(height: AppSizes.spaceBetweenItems),
                        ProductChoiceSelection(
                          title: entry.value['selection'],
                          onSelected: entry.value['onSelected'],
                          choices: entry.value['choices'],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBetweenSections),

                  /// Description
                  SectionHeading(
                    title: AppTexts.description,
                    showAction: false,
                  ),
                  SizedBox(height: AppSizes.spaceBetweenItems),

                  ReadMoreText(
                    "This is a sample product description. It provides detailed information about the product features, benefits, and usage instructions. It can be expanded or collapsed to show more or less content as needed.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(
                      fontSize: 14.0,
                      // color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14.0,
                      //  color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: AppSizes.spaceBetweenSections),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: ProductActionBar(),
    );
  }
}
