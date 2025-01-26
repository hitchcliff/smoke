import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/products/similar_products.dart';
import 'package:single_store_ecommerce/features/shop/store/store_showcase.dart';

class StoreTab extends StatelessWidget {
  const StoreTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        Column(
          children: [
            // ---# Showcase brand
            StoreShowcase(),

            // ---# Similar products
            SimilarProducts(),
          ],
        ),
      ],
    );
  }
}
