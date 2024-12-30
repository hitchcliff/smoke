import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/grid_layout.dart';
import 'package:single_store_ecommerce/components/products/product_item.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_vertical_details.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: MySizes.spaceBtwSections),
      color: MyColors.lightGrey,
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MySizes.defaultSpace),
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
    );
  }
}
