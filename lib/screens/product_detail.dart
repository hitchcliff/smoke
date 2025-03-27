import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/app_bars/addtocart_app_bar.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/features/shop/product/product_description.dart';
import 'package:single_store_ecommerce/features/shop/product/product_hero.dart';
import 'package:single_store_ecommerce/features/shop/product/product_metadata.dart';
import 'package:single_store_ecommerce/features/shop/product/product_reviews_button.dart';
import 'package:single_store_ecommerce/features/shop/product/product_variation.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MyAppBar(
      //   showBackArrow: true,
      //   title: TitleText("Title"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         FontAwesomeIcons.solidHeart,
      //         color: MyColors.heart,
      //       ),
      //     )
      //   ],
      // ),
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
