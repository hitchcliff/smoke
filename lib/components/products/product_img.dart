import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProductImg extends StatelessWidget {
  const ProductImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: const Image(
        fit: BoxFit.contain,
        image: AssetImage(
          MyImages.productImg1,
        ),
      ),
    );
  }
}
