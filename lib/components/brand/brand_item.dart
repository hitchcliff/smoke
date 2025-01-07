import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand_title_with_icon.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class BrandItemProp {
  const BrandItemProp({
    required this.image,
    required this.brandName,
    required this.verified,
    required this.totalProducts,
  });

  final ImageProvider<Object> image;
  final String brandName;
  final bool verified;
  final String totalProducts;
}

class BrandItem extends StatelessWidget {
  const BrandItem(
    this.props, {
    super.key,
  });

  final BrandItemProp props;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Row(
      children: [
        // ---# Brand Image
        Image(
          color: isDarkMode ? MyColors.white : MyColors.black,
          width: 40,
          height: 40,
          fit: BoxFit.contain,
          image: props.image,
        ),

        // ---# Brand Name
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BrandTitleWithIcon(
                name: props.brandName,
                verified: props.verified,
              ),
              Text(
                "${props.totalProducts} Products",
                style: Theme.of(context).textTheme.labelMedium?.apply(
                      overflow: TextOverflow.ellipsis,
                    ),
              ),
            ],
          ),
        )
      ].gap(width: MySizes.sm),
    );
  }
}
