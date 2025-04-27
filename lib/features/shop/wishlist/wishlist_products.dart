import 'package:flutter/material.dart';
import 'package:smoke/components/products/display_products_vertical.dart';
import 'package:smoke/components/products/product_thumbnail.dart';
import 'package:smoke/components/products/product_card.dart';
import 'package:smoke/utils/constants/image_strings.dart';
import 'package:smoke/utils/constants/text_strings.dart';

class WishlistProducts extends StatelessWidget {
  const WishlistProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DisplayProductsVertical(
      margin: EdgeInsets.zero,
      DisplayProductsVerticalProps(
        null,
        [
          DisplayProductsVerticalDetailsProp(
            thumbnail: ProductThumbnailProps(
                imgUrl: MyImages.productImg1,
                isWishlist: true,
                onTapHeart: () {},
                onTapImg: () {}),
            details: ProductCardProps(
                name: 'Green Nike Air Shoes',
                brand: MyTexts.brandNike,
                onTap: () {},
                price: '35.5',
                verified: true),
          ),
          DisplayProductsVerticalDetailsProp(
            thumbnail: ProductThumbnailProps(
                imgUrl: MyImages.productImg2,
                isWishlist: true,
                onTapHeart: () {},
                onTapImg: () {}),
            details: ProductCardProps(
                name: 'Green Nike Air Shoes',
                brand: MyTexts.brandNike,
                onTap: () {},
                price: '35.5',
                verified: true),
          ),
          DisplayProductsVerticalDetailsProp(
            thumbnail: ProductThumbnailProps(
                imgUrl: MyImages.productImg3,
                isWishlist: true,
                onTapHeart: () {},
                onTapImg: () {}),
            details: ProductCardProps(
                name: 'Green Nike Air Shoes',
                brand: MyTexts.brandNike,
                onTap: () {},
                price: '35.5',
                verified: true),
          ),
          DisplayProductsVerticalDetailsProp(
            thumbnail: ProductThumbnailProps(
                imgUrl: MyImages.productImg1,
                isWishlist: true,
                onTapHeart: () {},
                onTapImg: () {}),
            details: ProductCardProps(
                name: 'Green Nike Air Shoes',
                brand: MyTexts.brandNike,
                onTap: () {},
                price: '35.5',
                verified: true),
          ),
        ],
      ),
    );
  }
}
