import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductVariations extends StatelessWidget {
  const ProductVariations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);
    ProductController productController = ProductController.instance;

    return Positioned(
      bottom: 50,
      left: 0,
      right: 0,
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: productController.singleProduct.value.images!.length,
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.only(
            left: MySizes.spaceBtwItems,
          ),
          child: GestureDetector(
            onTap: () {
              productController.updateSingleProductThumbnail(
                  productController.singleProduct.value.images![index]);
            },
            child: Image(
              width: 80,
              fit: BoxFit.cover,
              image: NetworkImage(
                  productController.singleProduct.value.images![index]),
            ),
          ),
        ),
      ),
    );
  }
}
