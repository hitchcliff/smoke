import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/products/similar_products.dart';
import 'package:single_store_ecommerce/models/category_model.dart';

class StoreTab extends StatelessWidget {
  const StoreTab({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          children: [
            // ---# Showcase brand
            // StoreShowcase(),

            // ---# Similar products
            SimilarProducts(category: category),
          ],
        ),
      ],
    );
  }
}
