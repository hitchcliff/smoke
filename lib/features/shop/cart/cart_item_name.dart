import 'package:flutter/material.dart';

class CartItemName extends StatelessWidget {
  const CartItemName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Green Nike Shoes",
      maxLines: 1,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.apply(overflow: TextOverflow.ellipsis),
    );
  }
}
