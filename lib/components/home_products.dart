import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/grid_layout.dart';
import 'package:single_store_ecommerce/components/products/product_item.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_vertical_details.dart';
import 'package:single_store_ecommerce/components/section_heading.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Container(
      margin: const EdgeInsets.only(top: MySizes.spaceBtwSections),
      color: isDarkMode ? MyColors.darkerGrey : MyColors.lightGrey,
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: MySizes.spaceBtwItems),
            child: SectionHeading(
              titleColor: isDarkMode ? MyColors.white : MyColors.black,
              title: MyTexts.headingPopularProducts,
              actionText: MyTexts.headingActionBtnTxt,
              showActionButton: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: MySizes.defaultSpace,
              top: MySizes.spaceBtwItems,
            ),
            child: GridLayout(
              crossAxisCount: 2,
              children: [
                ProductVerticalItem(
                  thumbnail: ProductThumbnail(
                    imgUrl: MyImages.productImg1,
                    onTapHeart: () {},
                    onTapImg: () {},
                    saleTxt: "25%",
                    onSale: true,
                    isWishlist: true,
                  ),
                  details: ProductVerticalDetails(
                    name: "Green Nike Air Shoes",
                    price: "35.5",
                    brand: "Nike",
                    verified: true,
                    onTap: () {},
                  ),
                ),
                ProductVerticalItem(
                  thumbnail: ProductThumbnail(
                    imgUrl: MyImages.productImg1,
                    onTapHeart: () {},
                    onTapImg: () {},
                    saleTxt: "25%",
                    onSale: true,
                    isWishlist: true,
                  ),
                  details: ProductVerticalDetails(
                    name: "Green Nike Air Shoes",
                    price: "35.5",
                    brand: "Nike",
                    onTap: () {},
                  ),
                ),
                ProductVerticalItem(
                  thumbnail: ProductThumbnail(
                    imgUrl: MyImages.productImg1,
                    onTapHeart: () {},
                    onTapImg: () {},
                    saleTxt: "25%",
                    onSale: true,
                    isWishlist: true,
                  ),
                  details: ProductVerticalDetails(
                    name: "Green Nike Air Shoes",
                    price: "35.5",
                    brand: "Nike",
                    onTap: () {},
                  ),
                ),
                ProductVerticalItem(
                  thumbnail: ProductThumbnail(
                    imgUrl: MyImages.productImg1,
                    onTapHeart: () {},
                    onTapImg: () {},
                    saleTxt: "25%",
                    onSale: true,
                    isWishlist: true,
                  ),
                  details: ProductVerticalDetails(
                    name: "Green Nike Air Shoes",
                    price: "35.5",
                    brand: "Nike",
                    onTap: () {},
                  ),
                ),
                ProductVerticalItem(
                  thumbnail: ProductThumbnail(
                    imgUrl: MyImages.productImg1,
                    onTapHeart: () {},
                    onTapImg: () {},
                    saleTxt: "25%",
                    onSale: true,
                    isWishlist: true,
                  ),
                  details: ProductVerticalDetails(
                    name: "Green Nike Air Shoes",
                    price: "35.5",
                    brand: "Nike",
                    onTap: () {},
                  ),
                ),
                ProductVerticalItem(
                  thumbnail: ProductThumbnail(
                    imgUrl: MyImages.productImg1,
                    onTapHeart: () {},
                    onTapImg: () {},
                    saleTxt: "25%",
                    onSale: true,
                    isWishlist: true,
                  ),
                  details: ProductVerticalDetails(
                    name: "Green Nike Air Shoes",
                    price: "35.5",
                    brand: "Nike",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
