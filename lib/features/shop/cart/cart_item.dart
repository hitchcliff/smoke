import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand/brand_icon.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/features/shop/cart/cart_item_buttons.dart';
import 'package:single_store_ecommerce/features/shop/cart/cart_item_name.dart';
import 'package:single_store_ecommerce/features/shop/cart/cart_item_variation.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

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
              // ---# Name and Icon
              BrandIcon(name: "Nike", verified: true),
              CartItemName(),

              // ---# Variation
              CartItemVariation(),

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
