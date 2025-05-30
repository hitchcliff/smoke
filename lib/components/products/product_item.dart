import 'package:flutter/material.dart';
import 'package:smoke/components/products/product_card.dart';
import 'package:smoke/components/products/product_thumbnail.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ProductVerticalItem extends StatelessWidget {
  const ProductVerticalItem(
    this.thumbnail,
    this.details, {
    super.key,
  });

  final ProductCard details;
  final ProductThumbnail thumbnail;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.all(MySizes.cardPadding),
      decoration: BoxDecoration(
        color: isDarkMode ? MyColors.dark : MyColors.light,
        borderRadius: BorderRadius.circular(MySizes.cardRadius),
        border: Border.all(
            width: 1, color: isDarkMode ? MyColors.light : MyColors.dark),
      ),
      child: Column(
        children: [thumbnail, details],
      ),
    );
  }
}
