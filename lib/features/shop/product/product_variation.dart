import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/chips/variation_chip.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/features/shop/product/product_variation_info.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductVariation extends StatelessWidget {
  const ProductVariation({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController.instance;

    if (productController.singleProduct.value.productAttributes == null) {
      return SizedBox();
    } else {
      return Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            const ProductVariationInfo(),

            /// Mapping the variation
            variation(context, productController.singleProduct.value),

            // ---# Checkout
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const BodyText("Checkout", color: MyColors.white),
              ),
            ),
          ].gap(height: MySizes.spaceBtwItems),
        ),
      );
    }
  }
}

Widget variation(BuildContext context, ProductModel product) {
  return Column(
      children: product.productAttributes!
          .map(
            (attr) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionHeading(SectionHeadingProps(
                  title: "Colors",
                  titleColor: MyHelpers.textColor(context: context),
                )),
                Wrap(
                  alignment: WrapAlignment.start,
                  runSpacing: MySizes.spaceBtwItems,
                  children: [
                    VariationChip(
                      "Green",
                      onSelected: (value) {},
                      selected: true,
                    ),
                    VariationChip(
                      "Blue",
                      onSelected: (value) {},
                      selected: false,
                    ),
                    VariationChip(
                      "Red",
                      onSelected: (value) {},
                      selected: false,
                    ),
                  ].gap(width: MySizes.spaceBtwItems),
                ),
              ].gap(height: MySizes.spaceBtwItems),
            ),
          )
          .toList());
}
