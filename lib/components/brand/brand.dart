import 'package:flutter/material.dart';
import 'package:smoke/components/brand/brand_item.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class Brand extends StatelessWidget {
  const Brand(this.prop, {super.key});

  final BrandItemProp prop;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MySizes.md,
        vertical: MySizes.sm,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.defaultRadius),
        border:
            Border.all(color: isDarkMode ? MyColors.white : MyColors.primary),
      ),
      child: BrandItem(
        BrandItemProp(
          isNetworkImage: false,
          image: prop.image,
          brandName: prop.brandName,
          verified: prop.verified,
          totalProducts: prop.totalProducts,
        ),
      ),
    );
  }
}
