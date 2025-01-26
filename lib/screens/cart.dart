import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/features/shop/cart/cart_checkout.dart';
import 'package:single_store_ecommerce/features/shop/cart/cart_items.dart';
import 'package:single_store_ecommerce/screens/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(showBackArrow: true, title: TitleText("Cart")),
      bottomNavigationBar: CartCheckout(
        "\$400",
        onPressed: () {
          Get.to(() => const CheckoutScreen());
        },
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: CartItems(),
        ),
      ),
    );
  }
}
