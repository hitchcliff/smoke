import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductImg extends StatelessWidget {
  const ProductImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController.instance;

    return Container(
      height: 400,
      width: double.infinity,
      // padding: const EdgeInsets.only(top: MySizes.defaultSpace),
      child: Image(
        fit: BoxFit.cover,
        image: NetworkImage(productController.singleProduct.value.thumbnail),
      ),
    );
  }
}
