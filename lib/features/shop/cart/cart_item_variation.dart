import 'package:flutter/material.dart';

class CartItemVariation extends StatelessWidget {
  const CartItemVariation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(text: "Color "),
          TextSpan(
              text: "White ",
              style: Theme.of(context).textTheme.labelMedium?.apply(
                    fontWeightDelta: 2,
                  )),
          const TextSpan(text: "Size "),
          TextSpan(
              text: "EU 08",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.apply(fontWeightDelta: 2)),
        ],
      ),
    );
  }
}
