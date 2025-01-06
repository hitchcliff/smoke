import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductVerticalDetailsProp {
  const ProductVerticalDetailsProp({
    required this.name,
    required this.brand,
    this.price = "0",
    this.verified = false,
    required this.onTap,
  });

  final String name;
  final String brand;
  final String price;
  final bool verified;
  final VoidCallback onTap;
}

class ProductVerticalDetails extends StatelessWidget {
  const ProductVerticalDetails(
    this.prop, {
    super.key,
  });

  final ProductVerticalDetailsProp prop;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: MySizes.spaceBtwItems,
        horizontal: MySizes.cardPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product name
          Text(
            prop.name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          // brand
          Row(
            children: [
              Text(
                prop.brand,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              if (prop.verified)
                const Icon(
                  FontAwesomeIcons.solidCircleCheck,
                  color: MyColors.verified,
                  size: MySizes.iconSm,
                )
            ].gap(width: MySizes.sm),
          ),
          // price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${prop.price}',
                  style: Theme.of(context).textTheme.headlineMedium),
              GestureDetector(
                onTap: prop.onTap,
                child: Container(
                  padding: const EdgeInsets.all(MySizes.cardPlusPadding),
                  decoration: BoxDecoration(
                    color: isDarkMode ? MyColors.primary : MyColors.black,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(MySizes.cardPlusRadius),
                      bottomLeft: Radius.circular(MySizes.cardPlusRadius),
                    ),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.plus,
                    color: MyColors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
