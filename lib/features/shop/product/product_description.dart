import 'package:flutter/material.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/collapse_text.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/controllers/product_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController.instance;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeading(SectionHeadingProps(
            title: "Description",
            titleColor: MyHelpers.textColor(context: context),
          )),
          CollapseText(
            productController.singleProduct.value.description,
          ),

          // ---# Checkout
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const BodyText("Checkout", color: MyColors.white),
            ),
          ),
          const Divider()
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
