import 'package:flutter/material.dart';
import 'package:smoke/components/products/similar_products.dart';
import 'package:smoke/models/category_model.dart';

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
