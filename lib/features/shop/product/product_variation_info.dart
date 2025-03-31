import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:logger/logger.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/label_info_text.dart';
import 'package:single_store_ecommerce/components/texts/label_text.dart';
import 'package:single_store_ecommerce/components/texts/linethrough_text.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/models/product_variation_model.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductVariationInfo extends StatelessWidget {
  const ProductVariationInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    ProductController productController = ProductController.instance;
    final ProductVariationModel product =
        productController.selectedVariation.value;

    Logger().d(productController.singleProduct.value.salePrice);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.cardRadius),
        color: isDark ? MyColors.darkerGrey : MyColors.grey,
      ),
      padding: const EdgeInsets.all(MySizes.md),
      child: Column(
        children: [
          Row(
            children: [
              SectionHeading(
                SectionHeadingProps(
                    titleColor: MyHelpers.textColor(context: context),
                    title: "Variation"),
              ),
              Obx(
                () => Column(
                  children: [
                    Row(
                      children: [
                        const LabelText("Price:"),
                        product.salePrice < 0
                            ? SizedBox()
                            : LinethroughText('\$${product.price}'),
                        BodyText('\$${product.salePrice}'),
                      ].gap(width: MySizes.sm),
                    ),
                    Row(
                      children: [
                        const LabelText('Stock: '),
                        LabelInfoText(
                          productController.selectedVariation.value.stock > 0
                              ? "In Stock"
                              : "Out of stock",
                        ),
                      ].gap(width: MySizes.sm),
                    )
                  ].gap(width: MySizes.sm),
                ),
              )
            ].gap(width: MySizes.sm),
          ),
          const BodyText(
              "This is the Description of the Products and it can go up to max 4 lines."),
        ].gap(height: MySizes.sm),
      ),
    );
  }
}
