import 'package:flutter/material.dart';
import 'package:smoke/components/brand/brand_icon.dart';
import 'package:smoke/components/rounded/rounded_image.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/shop/cart/cart_item_buttons.dart';
import 'package:smoke/features/shop/cart/cart_item_name.dart';
import 'package:smoke/features/shop/cart/cart_item_variation.dart';
import 'package:smoke/utils/constants/image_strings.dart';
import 'package:smoke/utils/constants/sizes.dart';

class CartItem extends StatelessWidget {
  const CartItem({
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

              // ---# Buttons and Price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ---# Add or Subtract
                  CartItemButtons(),

                  // ---# Current Price
                  BodyText("\$100"),
                ],
              ),
            ],
          ),
        )
      ].gap(width: MySizes.spaceBtwItems),
    );
  }
}
