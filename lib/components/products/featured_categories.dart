import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/circle/circle_image.dart';
import 'package:smoke/components/shimmer/category_shimmer.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/controllers/category_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/screens/category.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';

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
