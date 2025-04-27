import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/products/display_products_vertical.dart';
import 'package:smoke/components/products/product_card.dart';
import 'package:smoke/components/products/product_thumbnail.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/controllers/product_controller.dart';
import 'package:smoke/screens/product_detail.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);
    ProductController controller = ProductController.instance;

    return DisplayProductsVertical(
      margin: const EdgeInsets.all(0),
      DisplayProductsVerticalProps(
        SectionHeadingProps(
          title: "Search Results",
          titleColor: isDark ? MyColors.white : MyColors.black,
          // showActionButton: true,
          // onPressed: () => Get.to(() => const AllProductsScreen()),
        ),
        controller.searchedProducts
            .map((product) => (DisplayProductsVerticalDetailsProp(
                  thumbnail: ProductThumbnailProps(
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
                    onTapImg: () => Get.to(() => const ProductDetailScreen()),
                  ),
                  details: ProductCardProps(
                    name: product.title,
                    price: product.price.toString(),
                    brand: MyTexts.brandNike,
                    onTap: () {},
                    verified: true,
                  ),
                )))
            .toList(),
      ),
    );
  }
}
