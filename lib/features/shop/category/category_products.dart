import 'package:flutter/material.dart';
import 'package:smoke/components/products/product_horizontal.dart';
import 'package:smoke/controllers/category_controller.dart';
import 'package:smoke/utils/constants/sizes.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = CategoryController.instance;

    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemCount: categoryController.products.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: MySizes.spaceBtwItems,
        ),
        itemBuilder: (context, index) => ProductHorizontal(
          product: categoryController.products[index],
        ),
      ),
    );
  }
}
