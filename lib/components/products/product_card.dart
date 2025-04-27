import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoke/components/brand/brand_icon.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ProductCardProps {
  const ProductCardProps({
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

class ProductCard extends StatelessWidget {
  const ProductCard(
    this.prop, {
    super.key,
  });

  final ProductCardProps prop;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: MySizes.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // product name
              Text(
                prop.name,
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
              // brand
              BrandIcon(
                name: prop.brand,
                verified: prop.verified,
              ),
            ],
          ),
        ),

        // price
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                '\$${prop.price}',
                style: Theme.of(context).textTheme.headlineMedium?.apply(
                      overflow: TextOverflow.ellipsis,
                    ),
              ),
            ),
            GestureDetector(
              onTap: prop.onTap,
              child: Container(
                padding: const EdgeInsets.all(MySizes.cardPlusPadding),
                decoration: BoxDecoration(
                  color: isDarkMode ? MyColors.primary : MyColors.dark,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(MySizes.cardPlusRadius),
                    bottomRight: Radius.circular(MySizes.cardPlusRadius),
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
    );
  }
}
