import 'package:flutter/material.dart';
import 'package:smoke/features/shop/checkout/checkout_item.dart';
import 'package:smoke/utils/constants/sizes.dart';

class CheckoutItems extends StatelessWidget {
  const CheckoutItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (context, index) => const SizedBox(
        height: MySizes.spaceBtwItems,
      ),
      itemBuilder: (context, index) => const Column(
        children: [
          CheckoutItem(),
        ],
      ),
    );
  }
}
