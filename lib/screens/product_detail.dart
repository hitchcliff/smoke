import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/addtocart_app_bar.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/features/shop/product/product_description.dart';
import 'package:smoke/features/shop/product/product_hero.dart';
import 'package:smoke/features/shop/product/product_metadata.dart';
import 'package:smoke/features/shop/product/product_reviews_button.dart';
import 'package:smoke/features/shop/product/product_variation.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AddToCartAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---# Product Hero
              ProductHero(),

              // ---# Metadata
              ProductMetadata(),

              // ---# Variations
              ProductVariation(),

              // ---# Decription
              ProductDescription(),

              // ---# Reviews
              ProductReviewsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
