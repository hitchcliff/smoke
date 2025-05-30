import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/products/product_card.dart';
import 'package:smoke/components/products/product_thumbnail.dart';
import 'package:smoke/controllers/brand_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/models/product_model.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ProductHorizontal extends StatelessWidget {
  const ProductHorizontal({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);
    BrandController brandController = Get.put(BrandController());

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
              isNetworkImg: true,
              imgUrl: product.thumbnail,
              isWishlist: false,
              saleTxt: product.salePrice > 0
                  ? MyHelpers.getPercentSale(
                      product.price,
                      product.salePrice,
                    )
                  : "",
              onSale: product.salePrice > 0,
              onTapHeart: () {},
              onTapImg: () {},
            ),
          ),
          SizedBox(
            width: 150,
            child: ProductCard(
              ProductCardProps(
                name: product.title,
                price: product.price.toString(),
                brand: brandController.read(product.brandId).name,
                onTap: () {},
                verified: brandController.read(product.brandId).verified,
              ),
            ),
          ),
        ].gap(width: MySizes.sm),
      ),
    );
  }
}
