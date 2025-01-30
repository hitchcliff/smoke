import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/products/display_products_vertical.dart';
import 'package:single_store_ecommerce/components/products/product_card.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/screens/all_products.dart';
import 'package:single_store_ecommerce/screens/product_detail.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class AllProductsList extends StatelessWidget {
  const AllProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    return DisplayProductsVertical(
      margin: const EdgeInsets.all(0),
      DisplayProductsVerticalProps(
        SectionHeadingProps(
          title: MyTexts.headingPopularProducts,
          titleColor: isDark ? MyColors.white : MyColors.black,
          showActionButton: true,
          onPressed: () => Get.to(() => const AllProductsScreen()),
        ),
        [
          DisplayProductsVerticalDetailsProp(
            thumbnail: ProductThumbnailProps(
              imgUrl: MyImages.productImg1,
              isWishlist: true,
              saleTxt: "25%",
              onSale: true,
              onTapHeart: () {},
              onTapImg: () => Get.to(() => const ProductDetailScreen()),
            ),
            details: ProductCardProps(
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
            details: ProductCardProps(
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
            details: ProductCardProps(
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
            details: ProductCardProps(
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
            details: ProductCardProps(
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
            details: ProductCardProps(
              name: "Green Nike Air Shoes",
              price: "55.5",
              brand: MyTexts.brandNike,
              onTap: () {},
              verified: true,
            ),
          ),
        ],
      ),
    );
  }
}
