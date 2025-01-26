import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/features/shop/cart/cart_checkout.dart';
import 'package:single_store_ecommerce/features/shop/cart/cart_item.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(showBackArrow: true, title: TitleText("Cart")),
      bottomNavigationBar: CartCheckout(
        "\$400",
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
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
        ),
      ),
    );
  }
}
