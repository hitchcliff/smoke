import 'package:flutter/material.dart';
import 'package:smoke/components/brand/brand_icon.dart';
import 'package:smoke/components/rounded/rounded_image.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/shop/cart/cart_item_name.dart';
import 'package:smoke/features/shop/cart/cart_item_variation.dart';
import 'package:smoke/utils/constants/image_strings.dart';
import 'package:smoke/utils/constants/sizes.dart';

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ---# Image
        Expanded(
          flex: 4,
          child: RoundedImage(onTap: () {}, imgUrl: MyImages.productImg1),
        ),

        // ---# Details
        const Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---# Brand
              BrandIcon(name: "Nike", verified: true),

              // ---# Name
              CartItemName(),

              // ---# Variation
              CartItemVariation(),

              SizedBox(
                height: MySizes.sm,
              ),
            ],
          ),
        )
      ].gap(width: MySizes.spaceBtwItems),
    );
  }
}
