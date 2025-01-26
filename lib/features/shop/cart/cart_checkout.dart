import 'package:flutter/material.dart';

class CartCheckout extends StatelessWidget {
  const CartCheckout(
    this.price, {
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final String price;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
      onPressed: onPressed,
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: "Checkout "),
            TextSpan(text: price),
          ],
        ),
      ),
    );
  }
}
