import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/circular_container.dart';
import 'package:single_store_ecommerce/components/header_wrapper.dart';
import 'package:single_store_ecommerce/components/home_appbar.dart';
import 'package:single_store_ecommerce/components/home_products.dart';
import 'package:single_store_ecommerce/components/product_categories.dart';
import 'package:single_store_ecommerce/components/products/product_vertical_details.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/promo_slider.dart';
import 'package:single_store_ecommerce/components/rounded_image.dart';
import 'package:single_store_ecommerce/components/search_form.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWrapper(
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

              // promo slider
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: MySizes.defaultSpace),
                child: PromoSlider(
                  banners: [
                    RoundedImage(
                        onTap: () {}, imgUrl: MyImages.promoBannerImg1),
                    RoundedImage(
                        onTap: () {}, imgUrl: MyImages.promoBannerImg2),
                    RoundedImage(
                        onTap: () {}, imgUrl: MyImages.promoBannerImg3),
                  ],
                ),
              ),

              // list of products
              const HomeProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
