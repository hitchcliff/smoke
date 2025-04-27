import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/forms/search_form.dart';
import 'package:smoke/components/headers/header_wrapper.dart';
import 'package:smoke/components/products/featured_categories.dart';
import 'package:smoke/controllers/product_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/shop/home/home_appbar.dart';
import 'package:smoke/screens/search_products.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

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
