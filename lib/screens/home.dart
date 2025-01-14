import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/headers/header_wrapper.dart';
import 'package:single_store_ecommerce/components/bars/home_appbar.dart';
import 'package:single_store_ecommerce/components/products/product_categories.dart';
import 'package:single_store_ecommerce/components/products/display_products_vertical.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_vertical_details.dart';
import 'package:single_store_ecommerce/components/sliders/promo_slider.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/components/forms/search_form.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/screens/product_details.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

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
              DisplayProductsVertical(
                DisplayProductsVerticalProps(
                  SectionHeadingProps(
                    title: MyTexts.headingPopularProducts,
                    titleColor: isDarkMode ? MyColors.white : MyColors.black,
                    showActionButton: true,
                    actionText: MyTexts.headingActionBtnTxt,
                    onPressed: () {},
                  ),
                  [
                    DisplayProductsVerticalDetailsProp(
                      thumbnail: ProductThumbnailProps(
                        imgUrl: MyImages.productImg1,
                        isWishlist: true,
                        saleTxt: "25%",
                        onSale: true,
                        onTapHeart: () {},
                        onTapImg: () => Get.to(() => const ProductDetails()),
                      ),
                      details: ProductVerticalDetailsProps(
                        name: "Green Nike Air Shoes",
                        price: "35.5",
                        brand: MyTexts.brandNike,
                        onTap: () {},
                        verified: true,
                      ),
                    ),
                    DisplayProductsVerticalDetailsProp(
                      thumbnail: ProductThumbnailProps(
                        imgUrl: MyImages.productImg2,
                        onTapHeart: () {},
                        onTapImg: () {},
                      ),
                      details: ProductVerticalDetailsProps(
                        name: "Green Nike Air Shoes",
                        price: "55.5",
                        brand: MyTexts.brandNike,
                        onTap: () {},
                        verified: true,
                      ),
                    ),
                    DisplayProductsVerticalDetailsProp(
                      thumbnail: ProductThumbnailProps(
                        imgUrl: MyImages.productImg1,
                        isWishlist: true,
                        saleTxt: "25%",
                        onSale: true,
                        onTapHeart: () {},
                        onTapImg: () {},
                      ),
                      details: ProductVerticalDetailsProps(
                        name: "Green Nike Air Shoes",
                        price: "35.5",
                        brand: MyTexts.brandNike,
                        onTap: () {},
                        verified: true,
                      ),
                    ),
                    DisplayProductsVerticalDetailsProp(
                      thumbnail: ProductThumbnailProps(
                        imgUrl: MyImages.productImg2,
                        onTapHeart: () {},
                        onTapImg: () {},
                      ),
                      details: ProductVerticalDetailsProps(
                        name: "Green Nike Air Shoes",
                        price: "55.5",
                        brand: MyTexts.brandNike,
                        onTap: () {},
                        verified: true,
                      ),
                    ),
                    DisplayProductsVerticalDetailsProp(
                      thumbnail: ProductThumbnailProps(
                        imgUrl: MyImages.productImg1,
                        isWishlist: true,
                        saleTxt: "25%",
                        onSale: true,
                        onTapHeart: () {},
                        onTapImg: () {},
                      ),
                      details: ProductVerticalDetailsProps(
                        name: "Green Nike Air Shoes",
                        price: "35.5",
                        brand: MyTexts.brandNike,
                        onTap: () {},
                        verified: true,
                      ),
                    ),
                    DisplayProductsVerticalDetailsProp(
                      thumbnail: ProductThumbnailProps(
                        imgUrl: MyImages.productImg2,
                        onTapHeart: () {},
                        onTapImg: () {},
                      ),
                      details: ProductVerticalDetailsProps(
                        name: "Green Nike Air Shoes",
                        price: "55.5",
                        brand: MyTexts.brandNike,
                        onTap: () {},
                        verified: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
