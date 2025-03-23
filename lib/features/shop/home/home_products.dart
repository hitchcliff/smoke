import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/web.dart';
import 'package:single_store_ecommerce/components/products/display_products_vertical.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_card.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/controllers/brand_controller.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/screens/all_products.dart';
import 'package:single_store_ecommerce/screens/product_detail.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
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
    ProductController controller = Get.put(ProductController());
    BrandController brandController = Get.put(BrandController());

    return Obx(
      () => controller.loading.value
          ? Container(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  CircularProgressIndicator(),
                  BodyText("Fetching products..."),
                ],
              ))
          : DisplayProductsVertical(
              DisplayProductsVerticalProps(
                SectionHeadingProps(
                  title: MyTexts.headingPopularProducts,
                  titleColor: isDarkMode ? MyColors.white : MyColors.black,
                  showActionButton: true,
                  onPressed: () => Get.to(() => const AllProductsScreen()),
                ),
                controller.featuredProducts
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
                            onTapImg: () =>
                                Get.to(() => const ProductDetailScreen()),
                          ),
                          details: ProductCardProps(
                            name: product.title,
                            price: product.price.toString(),
                            brand: brandController.read(product.brandId!).name,
                            onTap: () {},
                            verified:
                                brandController.read(product.brandId!).verified,
                          ),
                        )))
                    .toList(),
              ),
            ),
    );
  }
}
