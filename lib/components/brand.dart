import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand_title_with_icon.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class Brand extends StatelessWidget {
  const Brand({
    super.key,
    required this.brandName,
    this.verified = false,
    required this.image,
    this.totalProducts = "0",
  });

  final String brandName;
  final bool verified;
  final ImageProvider image;
  final String totalProducts;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MySizes.md,
        vertical: MySizes.sm,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySizes.defaultRadius),
          border: Border.all(color: MyColors.grey)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ---# Brand Image
          Expanded(
            child: Image(
              fit: BoxFit.contain,
              image: image,
            ),
          ),

          // ---# Brand Name
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BrandTitleWithIcon(
                name: brandName,
                verified: verified,
              ),
              Text(
                "$totalProducts Products",
                style: Theme.of(context).textTheme.labelMedium?.apply(
                      overflow: TextOverflow.ellipsis,
                    ),
              ),
            ],
          )
        ].gap(width: MySizes.sm),
      ),
    );
  }
}
