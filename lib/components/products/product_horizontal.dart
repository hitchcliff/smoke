import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/products/product_card.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductHorizontal extends StatelessWidget {
  const ProductHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.defaultRadius),
        color: isDark ? MyColors.dark : MyColors.grey,
      ),
      child: Row(
        children: [
          ProductThumbnail(
            ProductThumbnailProps(
                imgUrl: MyImages.productImg1,
                onTapHeart: () {},
                onTapImg: () {},
                isWishlist: true,
                saleTxt: "25%",
                onSale: true),
          ),
          SizedBox(
            width: 150,
            child: ProductCard(
              ProductCardProps(
                  name: 'Green Nike Shirt',
                  brand: "Nike",
                  onTap: () {},
                  verified: true,
                  price: "250"),
            ),
          ),
        ].gap(width: MySizes.sm),
      ),
    );
  }
}
