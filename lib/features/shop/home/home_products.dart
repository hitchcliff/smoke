import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/products/display_products_vertical.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_vertical_details.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/screens/product_detail.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return DisplayProductsVertical(
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
              onTapImg: () => Get.to(() => const ProductDetailScreen()),
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
    );
  }
}
