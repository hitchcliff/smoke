import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand/brand.dart';
import 'package:single_store_ecommerce/components/brand/brand_item.dart';
import 'package:single_store_ecommerce/components/grid_layouts/grid_layout.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class StoreBrands extends StatelessWidget {
  const StoreBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);
    return Column(
      children: [
        // ---# Heading
        SectionHeading(
          SectionHeadingProps(
            titleColor: isDarkMode ? MyColors.light : MyColors.black,
            title: MyTexts.headingFeatureBrands,
            showActionButton: true,
            actionText: MyTexts.headingActionBtnTxt,
            onPressed: () {},
          ),
        ),

        // ---# Feature Brands
        const GridLayout(
          crossAxisCount: 2,
          children: [
            Brand(
              BrandItemProp(
                image: AssetImage(
                  MyImages.brandNike,
                ),
                brandName: MyTexts.brandNike,
                totalProducts: "256",
                verified: true,
              ),
            ),
            Brand(
              BrandItemProp(
                image: AssetImage(
                  MyImages.brandNike,
                ),
                brandName: MyTexts.brandNike,
                totalProducts: "256",
                verified: true,
              ),
            ),
            Brand(
              BrandItemProp(
                image: AssetImage(
                  MyImages.brandNike,
                ),
                brandName: MyTexts.brandNike,
                totalProducts: "256",
                verified: true,
              ),
            ),
            Brand(
              BrandItemProp(
                image: AssetImage(
                  MyImages.brandNike,
                ),
                brandName: MyTexts.brandNike,
                totalProducts: "256",
                verified: true,
              ),
            ),
          ],
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
