import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/products/product_item.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_card.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class ProductVertical extends StatelessWidget {
  const ProductVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProductVerticalItem(
      ProductThumbnail(
        ProductThumbnailProps(
          imgUrl: MyImages.productImg1,
          onTapHeart: () {},
          onTapImg: () {},
          saleTxt: "25%",
          onSale: true,
          isWishlist: true,
        ),
      ),
      ProductCard(
        ProductCardProps(
          name: "Green Nike Air Shoes",
          price: "35.5",
          brand: "Nike",
          onTap: () {},
        ),
      ),
    );
  }
}
