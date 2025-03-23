import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:logger/web.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/features/shop/category/category_products.dart';
import 'package:single_store_ecommerce/models/category_model.dart';
import 'package:single_store_ecommerce/screens/all_products.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: TitleText(category.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                // ---# Banner
                RoundedImage(
                  imgUrl: category.image,
                  isNetworkImage: true,
                  onTap: () => {},
                ),

                // ---# Horizontal Products
                Column(
                  children: [
                    SectionHeading(
                      SectionHeadingProps(
                        title: "Category: ${category.name}",
                        titleColor: MyHelpers.textColor(context: context),
                        showActionButton: true,
                        onPressed: () =>
                            Get.to(() => const AllProductsScreen()),
                      ),
                    ),

                    // ---# List
                    const CategoryProducts()
                  ].gap(height: MySizes.spaceBtwItems),
                ),
              ].gap(height: MySizes.spaceBtwSections),
            ),
          ),
        ),
      ),
    );
  }
}
