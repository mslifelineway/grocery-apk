import 'package:deshi_bazaar/common/styles/padding.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
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

                  /// Product attributes descriptions and additional informations goes here.
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
