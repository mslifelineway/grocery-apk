import 'package:flutter/material.dart';

import 'widgets/product_details_header.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  final bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image with slider
            ProductDetailsHeader(isFavorite: isFavorite),
          ],
        ),
      ),
    );
  }
}
