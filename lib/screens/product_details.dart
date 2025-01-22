import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/bars/addtocart_app_bar.dart';
import 'package:single_store_ecommerce/components/products/product_description.dart';
import 'package:single_store_ecommerce/components/products/product_hero.dart';
import 'package:single_store_ecommerce/components/products/product_metadata.dart';
import 'package:single_store_ecommerce/components/products/product_reviews.dart';
import 'package:single_store_ecommerce/components/products/product_variation.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
              ProductReviews(),
            ],
          ),
        ),
      ),
    );
  }
}
