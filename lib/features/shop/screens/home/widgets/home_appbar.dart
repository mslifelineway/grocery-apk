import 'package:deshi_bazaar/common/widgets/appbar/custom_appbar.dart';
import 'package:deshi_bazaar/common/product/cart/cart_counter_icon.dart';
import 'package:deshi_bazaar/features/shop/screens/home/widgets/home_appbar_title.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: HomeAppBarTitle(),
      actions: [CartCounterIcon(itemCount: 5)],
    );
  }
}
