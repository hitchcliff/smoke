import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand/brand_item.dart';
import 'package:single_store_ecommerce/components/card/showcase_brand_card.dart';
import 'package:single_store_ecommerce/components/category/category_images.dart';
import 'package:single_store_ecommerce/components/products/display_products_vertical.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_vertical_details.dart';
import 'package:single_store_ecommerce/components/section_heading.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class StoreTab extends StatelessWidget {
  const StoreTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          children: [
            // ---# Showcase brand
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
              child: ShowcaseBrandCard(
                const BrandItem(
                  BrandItemProp(
                    image: AssetImage(
                      MyImages.brandNike,
                    ),
                    brandName: MyTexts.brandNike,
                    verified: true,
                    totalProducts: "256",
                  ),
                ),
                CategoryImages(
                  [
                    CategoryImageProp(
                      imgUrl: MyImages.productImg1,
                      onTap: () {},
                    ),
                    CategoryImageProp(
                      imgUrl: MyImages.productImg2,
                      onTap: () {},
                    ),
                    CategoryImageProp(
                      imgUrl: MyImages.productImg3,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),

            // ---# Similar products
            DisplayProductsVertical(
              DisplayProductsVerticalProps(
                SectionHeadingProps(
                  title: MyTexts.headingYouMightLike,
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
      ],
    );
  }
}
