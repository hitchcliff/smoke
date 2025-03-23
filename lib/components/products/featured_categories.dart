import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/web.dart';
import 'package:single_store_ecommerce/components/circle/circle_image.dart';
import 'package:single_store_ecommerce/components/shimmer/category_shimmer.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/controllers/category_controller.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/screens/category.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class FeaturedCategories extends StatelessWidget {
  const FeaturedCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.put(CategoryController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MySizes.defaultSpace,
          ),
          child: SectionHeading(
            SectionHeadingProps(
              title: MyTexts.headingProductCategories,
            ),
          ),
        ),
        Obx(
          () => categoryController.loading.value
              ? CategoryShimmer(
                  itemCount: 6,
                )
              : Padding(
                  padding: EdgeInsets.only(left: MySizes.defaultSpace),
                  child: SizedBox(
                    height: 120,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryController.featuredCategories.length,
                      physics: const ScrollPhysics(),
                      separatorBuilder: (context, index) => SizedBox(
                        width: MySizes.spaceBtwItems,
                      ),
                      itemBuilder: (_, index) {
                        final category =
                            categoryController.featuredCategories[index];

                        return GestureDetector(
                          onTap: () {
                            // Go to category screen
                            Get.to(
                              () => CategoryScreen(
                                category: category,
                              ),
                            );

                            // Update products in category controller
                            categoryController.updateProducts(category.catId);
                          },
                          child: Column(
                            children: [
                              CircleImage(
                                width: 70,
                                isNetworkImg: true,
                                image: category.image,
                                height: 70,
                              ),
                              BodyText(category.name),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
        )
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
