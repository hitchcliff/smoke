import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:smoke/controllers/product_controller.dart';

class ProductImg extends StatelessWidget {
  const ProductImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController.instance;

    return SizedBox(
      height: 400,
      width: double.infinity,
      // padding: const EdgeInsets.only(top: MySizes.defaultSpace),
      child: Obx(
        () => Image(
          fit: BoxFit.cover,
          image: NetworkImage(productController.singleProductThumbnail.value),
        ),
      ),
    );
  }
}
