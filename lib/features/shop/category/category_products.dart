import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/products/product_horizontal.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: MySizes.spaceBtwItems,
        ),
        itemBuilder: (context, index) => const ProductHorizontal(),
      ),
    );
  }
}
