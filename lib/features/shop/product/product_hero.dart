import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/paths/curve_edges.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/features/shop/product/product_img.dart';
import 'package:single_store_ecommerce/features/shop/product/product_variations.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductHero extends StatelessWidget {
  const ProductHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);
    ProductController productController = ProductController.instance;

    return ClipPath(
      clipper: CurveEdges(),
      child: Container(
        color: isDarkMode ? MyColors.dark : MyColors.light,
        child: Stack(
          children: [
            // ---# Product
            const ProductImg(),

            // ---# Variations
            const ProductVariations(),

            // ---# App bar
            MyAppBar(
              showBackArrow: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.solidHeart,
                    color: MyColors.heart,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
