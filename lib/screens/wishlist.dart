import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/products/display_products_vertical.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_vertical_details.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          MyTexts.appbarWishlistTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.plus),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ---# List of products
            DisplayProductsVertical(
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
                    details: ProductVerticalDetailsProps(
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
                    details: ProductVerticalDetailsProps(
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
                    details: ProductVerticalDetailsProps(
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
                    details: ProductVerticalDetailsProps(
                        name: 'Green Nike Air Shoes',
                        brand: MyTexts.brandNike,
                        onTap: () {},
                        price: '35.5',
                        verified: true),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
