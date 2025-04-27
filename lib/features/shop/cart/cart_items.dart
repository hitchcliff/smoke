import 'package:flutter/material.dart';
import 'package:smoke/features/shop/cart/cart_item.dart';
import 'package:smoke/utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 4,
        separatorBuilder: (context, index) => const SizedBox(
          height: MySizes.spaceBtwItems,
        ),
        itemBuilder: (context, index) => const Column(
          children: [
            CartItem(),
          ],
        ),
      ),
    );
  }
}
