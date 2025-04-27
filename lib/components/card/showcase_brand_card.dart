import 'package:flutter/material.dart';
import 'package:smoke/components/brand/brand_item.dart';
import 'package:smoke/components/card/card_container.dart';
import 'package:smoke/components/category/category_images.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/sizes.dart';

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
      margin: const EdgeInsets.only(top: MySizes.spaceBtwItems),
      child: Column(
        children: [
          brandItem,
          categoryImages,
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
