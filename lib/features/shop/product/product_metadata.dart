import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:single_store_ecommerce/components/brand/brand_icon.dart';
import 'package:single_store_ecommerce/components/texts/label_info_text.dart';
import 'package:single_store_ecommerce/components/texts/label_text.dart';
import 'package:single_store_ecommerce/components/texts/linethrough_text.dart';
import 'package:single_store_ecommerce/components/texts/on_sale.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/controllers/brand_controller.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/screens/create_review.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';
import 'package:single_store_ecommerce/utils/helpers/isDark.dart';

class ProductMetadata extends StatelessWidget {
  const ProductMetadata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);
    ProductModel product = ProductController.instance.singleProduct.value;
    BrandController brandController = BrandController.instance;

    return Container(
      padding: const EdgeInsets.only(
        bottom: MySizes.defaultSpace,
        left: MySizes.defaultSpace,
        right: MySizes.defaultSpace,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(FontAwesomeIcons.solidStar, color: MyColors.star),
              Expanded(
                  child: Text("5.0 (199)",
                      style: Theme.of(context).textTheme.labelMedium)),
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(FontAwesomeIcons.share,
              //       color: isDarkMode ? MyColors.white : MyColors.black),
              // ),
              IconButton(
                icon: Icon(FontAwesomeIcons.comment),
                color: isDarkMode ? MyColors.white : MyColors.black,
                onPressed: () {
                  Get.to(() => const CreateReviewScreen());
                },
              ),
            ].gap(width: MySizes.spaceBtwItems),
          ),
          Row(
            children: [
              if (product.salePrice > 0)
                Row(
                  children: [
                    OnSale(
                      saleTxt: MyHelpers.getPercentSale(
                          product.price, product.salePrice),
                    ),
                    LinethroughText("\$${product.price}"),
                  ].gap(width: MySizes.spaceBtwItems),
                ),
              TitleText(
                  "\$${product.salePrice <= 0 ? product.price : product.salePrice}"),
            ].gap(width: MySizes.spaceBtwItems),
          ),
          Row(
            children: [
              const LabelText("Status"),
              LabelInfoText(product.stock > 0 ? "In Stock" : "Out of stock"),
            ].gap(width: MySizes.spaceBtwItems),
          ),
          Row(
            children: [
              const LabelText(
                "Brand",
              ),
              BrandIcon(
                  name: brandController.read(product.brandId).name,
                  verified: true),
            ].gap(width: MySizes.spaceBtwItems),
          ),
        ].gap(height: MySizes.sm),
      ),
    );
  }
}
