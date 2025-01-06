import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand/brand_item.dart';
import 'package:single_store_ecommerce/components/card/card_container.dart';
import 'package:single_store_ecommerce/components/category/category_images.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ShowcaseBrandCard extends StatelessWidget {
  const ShowcaseBrandCard(
    this.brandItem,
    this.categoryImages, {
    super.key,
  });

  final CategoryImages categoryImages;
  final BrandItem brandItem;

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      margin: const EdgeInsets.symmetric(vertical: MySizes.spaceBtwItems),
      child: Column(
        children: [
          brandItem,
          categoryImages,
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
