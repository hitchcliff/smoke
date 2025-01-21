import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/chips/variation_chip.dart';
import 'package:single_store_ecommerce/components/products/product_variation_info.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProductVariation extends StatelessWidget {
  const ProductVariation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        children: [
          const ProductVariationInfo(),
          // ---# Color
          Column(
            children: [
              const SectionHeading(SectionHeadingProps(title: "Colors")),
              Wrap(
                alignment: WrapAlignment.center,
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

          // ---# Size
          Column(
            children: [
              const SectionHeading(SectionHeadingProps(title: "Colors")),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  VariationChip(
                    "35 EU",
                    onSelected: (value) {},
                    selected: true,
                  ),
                  VariationChip(
                    "36 EU",
                    onSelected: (value) {},
                    selected: true,
                  ),
                  VariationChip(
                    "37 EU",
                    onSelected: (value) {},
                    selected: false,
                  ),
                ].gap(width: MySizes.spaceBtwItems),
              ),
            ].gap(height: MySizes.spaceBtwItems),
          ),

          // ---# Checkout
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const BodyText("Checkout"),
            ),
          ),
        ].gap(height: MySizes.spaceBtwSections),
      ),
    );
  }
}
