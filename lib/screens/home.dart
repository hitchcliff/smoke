import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/header_wrapper.dart';
import 'package:single_store_ecommerce/components/home_appbar.dart';
import 'package:single_store_ecommerce/components/product_categories.dart';
import 'package:single_store_ecommerce/components/search_form.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: HeaderWrapper(
            child: Column(
              children: [
                // app bar
                const HomeAppbar(),

                // search bar
                SearchForm(
                  onSubmitted: (value) {},
                  text: MyTexts.searchBarPlaceholder,
                ),

                // product categories
                const ProductCategories(),
              ].gap(height: MySizes.spaceBtwSections),
            ),
          ),
        ),
      ),
    );
  }
}
