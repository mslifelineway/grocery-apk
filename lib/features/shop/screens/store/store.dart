import 'package:deshi_bazaar/common/widgets/shapes/rounded_container.dart';
import 'package:deshi_bazaar/common/widgets/texts/section_heading.dart';
import 'package:deshi_bazaar/features/shop/screens/store/widgets/store_primary_header.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:deshi_bazaar/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: AppSizes.storeHeaderExpandedHeight,
              pinned: true,
              floating: true,
              flexibleSpace: Column(
                children: [
                  /// Header
                  StorePrimaryHeader(),

                  /// Brand Heading
                  SectionHeading(title: AppTexts.brands, showPadding: true),

                  /// Brands List
                  RoundedContainer(showBorder: true),
                ],
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
