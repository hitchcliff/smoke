import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/products/display_products_vertical.dart';
import 'package:smoke/components/products/product_card.dart';
import 'package:smoke/components/products/product_thumbnail.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/controllers/brand_controller.dart';
import 'package:smoke/controllers/category_controller.dart';
import 'package:smoke/models/category_model.dart';
import 'package:smoke/models/product_model.dart';
import 'package:smoke/screens/category.dart';
import 'package:smoke/screens/product_detail.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class SimilarProducts extends StatelessWidget {
  const SimilarProducts({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);
    BrandController brandController = BrandController.instance;
    CategoryController categoryController = CategoryController.instance;
    List<ProductModel> products =
        categoryController.getProductsById(category.catId);

    print('products!: $products');

    return Obx(
      () => categoryController.loading.value
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
                  title: MyTexts.headingYouMightLike,
                  titleColor: isDarkMode ? MyColors.white : MyColors.black,
                  showActionButton: true,
                  actionText: MyTexts.headingActionBtnTxt,
                  onPressed: () {
                    // Go to category screen
                    Get.to(
                      () => CategoryScreen(
                        category: category,
                      ),
                    );

                    // Update products in category controller
                    categoryController.updateProducts(category.catId);
                  },
                ),
                // Render all the products
                products
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
                            brand: brandController.read(product.brandId).name,
                            onTap: () {},
                            verified:
                                brandController.read(product.brandId).verified,
                          ),
                        )))
                    .toList(),
              ),
            ),
    );
  }
}
