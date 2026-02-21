import 'package:deshi_bazaar/common/product/cart/product_card_vertical.dart';
import 'package:deshi_bazaar/common/widgets/layouts/grid_layout.dart';
import 'package:deshi_bazaar/features/shop/screens/wishlist/widgets/wishlist_primary_header.dart';
import 'package:deshi_bazaar/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/image_strings.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banners = [
      AppImages.blueShoe,
      AppImages.blackShoe,
      AppImages.blueShoe,
      AppImages.blackShoe,
      AppImages.blueShoe,
      AppImages.blackShoe,
    ];

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: AppSizes.wishlistHeaderHeight,
              pinned: true,
              floating: true,
              flexibleSpace: Column(
                children: [
                  /// Header
                  WishlistPrimaryHeader(),
                ],
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: GridLayout(
            itemCount: 20,
            mainAxisExtent: AppSizes.gridViewMainAxisExtent,
            itemBuilder: (context, index) {
              return ProductCardVertical(
                imageUrl:
                    banners[index >= banners.length
                        ? ((index % banners.length)).toInt()
                        : index],
                isNetworkImage: false,
              );
            },
          ),
        ),
      ),
    );
  }
}
