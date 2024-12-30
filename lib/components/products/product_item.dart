import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/products/product_vertical_details.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProductVerticalItem extends StatelessWidget {
  const ProductVerticalItem(
      {super.key, required this.details, required this.thumbnail});

  final ProductVerticalDetails details;
  final ProductThumbnail thumbnail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(MySizes.cardPadding),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(MySizes.cardRadius),
      ),
      child: Column(
        children: [thumbnail, details],
      ),
    );
  }
}
