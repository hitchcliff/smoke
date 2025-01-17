import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/brand/brand.dart';
import 'package:single_store_ecommerce/components/brand/brand_icon.dart';
import 'package:single_store_ecommerce/components/brand/brand_item.dart';
import 'package:single_store_ecommerce/components/paths/curve_edges.dart';
import 'package:single_store_ecommerce/components/products/product_hero.dart';
import 'package:single_store_ecommerce/components/products/product_img.dart';
import 'package:single_store_ecommerce/components/products/product_metadata.dart';
import 'package:single_store_ecommerce/components/products/product_variations.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/components/texts/on_sale.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---# Product Hero
              const ProductHero(),

              // ---# Metadata
              const ProductMetadata(),
            ],
          ),
        ),
      ),
    );
  }
}
