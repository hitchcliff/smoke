import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';

class CheckoutCalculation extends StatelessWidget {
  const CheckoutCalculation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // ---# Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BodyText("Subtotal"),
            BodyText("\$256"),
          ],
        ),
        // ---# Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BodyText("Shipping Fee"),
            BodyText("\$6"),
          ],
        ),
        // ---# Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BodyText("Tax Fee"),
            BodyText("\$6"),
          ],
        ),
        // ---# Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BodyText("Subtotal"),
            BodyText("\$268"),
          ],
        ),
      ],
    );
  }
}
