import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:smoke/components/chips/variation_chip.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/controllers/product_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/models/product_variation_model.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ProductVariation extends StatelessWidget {
  const ProductVariation({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController.instance;

    return productController.singleProduct.value.productAttributes.isEmpty
        ? SizedBox()
        : Padding(
            padding: const EdgeInsets.only(
              bottom: MySizes.defaultSpace,
              left: MySizes.defaultSpace,
              right: MySizes.defaultSpace,
            ),
            child: Column(
              children: [
                // const ProductVariationInfo(),

                // Product Variation Chips
                Column(
                    children: productController
                        .singleProduct.value.productAttributes
                        .map(
                          (attr) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SectionHeading(SectionHeadingProps(
                                title: attr.name!,
                                titleColor:
                                    MyHelpers.textColor(context: context),
                              )),
                              Obx(
                                () => Wrap(
                                  alignment: WrapAlignment.start,
                                  runSpacing: MySizes.spaceBtwItems,
                                  children: attr.values!
                                      .map(
                                        (val) => (VariationChip(
                                          val,
                                          selected: val ==
                                              productController
                                                  .selectedVariation
                                                  .value
                                                  .attributeValues[attr.name],
                                          onSelected: (value) {
                                            final ProductVariationModel
                                                selected = productController
                                                    .singleProduct
                                                    .value
                                                    .productVariation
                                                    .where((variation) =>
                                                        variation
                                                                .attributeValues[
                                                            attr.name] ==
                                                        val)
                                                    .first;

                                            // Update the selectedVariation
                                            productController
                                                .updateSelectedVariation(
                                              selected,
                                            );

                                            // Logger().d(productController
                                            //     .products[0]
                                            //     .productVariation[0]
                                            //     .salePrice);

                                            // Update the thumbnail
                                            productController
                                                .updateSingleProductThumbnail(
                                              productController
                                                  .selectedVariation
                                                  .value
                                                  .image,
                                            );
                                          },
                                        )),
                                      )
                                      .toList()
                                      .gap(width: MySizes.spaceBtwItems),
                                ),
                              ),
                            ].gap(height: MySizes.spaceBtwItems),
                          ),
                        )
                        .toList())
              ].gap(height: MySizes.spaceBtwItems),
            ),
          );
  }
}
