import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/forms/search_form.dart';
import 'package:single_store_ecommerce/components/headers/header_wrapper.dart';
import 'package:single_store_ecommerce/components/products/featured_categories.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/features/shop/home/home_appbar.dart';
import 'package:single_store_ecommerce/screens/search_products.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController.instance;

    return HeaderWrapper(
      child: Column(
        children: [
          // app bar
          const HomeAppbar(),

          // search bar
          SearchForm(
            onSubmitted: (value) {
              print(value);
              // Search for products
              productController.searchProducts(value);

              // Nagivate to search screen
              Get.to(() => const SearchProductsScreen());
            },
            text: MyTexts.searchBarPlaceholder,
          ),

          // product categories
          const FeaturedCategories(),
        ].gap(height: MySizes.spaceBtwSections),
      ),
    );
  }
}
