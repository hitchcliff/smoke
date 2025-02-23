import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/icons/circular_icon_text.dart';
import 'package:single_store_ecommerce/components/shimmer/category_shimmer.dart';
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
                  itemCount: categoryController.featuredCategories.length,
                )
              : SizedBox(
                  height: 120,
                  child: Obx(
                    () => ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryController.featuredCategories.length,
                      physics: const ScrollPhysics(),
                      itemBuilder: (_, index) {
                        final category =
                            categoryController.featuredCategories[index];

                        return CircularIconText(
                            icon: IconDataSolid(category.codePoint),
                            text: category.name,
                            onTap: () {
                              Get.to(() => const CategoryScreen());
                            });
                      },
                    ),
                  ),
                ),
        )
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
