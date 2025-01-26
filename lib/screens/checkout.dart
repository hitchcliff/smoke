import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/card/card_container.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/features/shop/cart/cart_checkout.dart';
import 'package:single_store_ecommerce/features/shop/checkout/checkout_items.dart';
import 'package:single_store_ecommerce/features/shop/checkout/checkout_voucher.dart';
import 'package:single_store_ecommerce/features/shop/checkout/checkout_calculation.dart';
import 'package:single_store_ecommerce/features/shop/checkout/payment_method.dart';
import 'package:single_store_ecommerce/features/shop/checkout/shipping_address.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: TitleText("Checkout"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                // ---# Checkout items
                const CheckoutItems(),

                // ---# Voucher code
                const CheckoutVoucher(),

                CardContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(MySizes.sm),
                    child: Column(
                      children: [
                        // ---# Calculations
                        const CheckoutCalculation(),

                        const Divider(),

                        // ---# Payment Method
                        const PaymentMethod(),

                        // ---# Shipping Address
                        const ShippingAddress(),
                      ].gap(height: MySizes.spaceBtwSections),
                    ),
                  ),
                ),
              ].gap(height: MySizes.spaceBtwSections),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CartCheckout("\$250", onPressed: () {}),
    );
  }
}
