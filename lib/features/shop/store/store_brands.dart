import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/brand/brand.dart';
import 'package:smoke/components/brand/brand_item.dart';
import 'package:smoke/components/brand/brands.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/controllers/brand_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/screens/all_brands.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class StoreBrands extends StatelessWidget {
  const StoreBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);
    BrandController brandController = BrandController.instance;

    return Column(
      children: [
        // ---# Heading
        SectionHeading(
          SectionHeadingProps(
            titleColor: isDarkMode ? MyColors.light : MyColors.black,
            title: MyTexts.headingFeatureBrands,
            showActionButton: true,
            actionText: MyTexts.headingActionBtnTxt,
            onPressed: () => Get.to(() => const AllBrandsScreen()),
          ),
        ),

        // ---# Feature Brands
        Obx(
          () => Brands(brandController.featuredBrands
              .map((brand) => (Brand(
                    BrandItemProp(
                      isNetworkImage: true,
                      image: brand.image,
                      brandName: brand.name,
                      totalProducts: brand.totalProducts.toString(),
                      verified: true,
                    ),
                  )))
              .toList()),
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
