import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductVariations extends StatelessWidget {
  const ProductVariations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Positioned(
      bottom: 50,
      left: 0,
      right: 0,
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.only(
            left: MySizes.spaceBtwItems,
          ),
          child: RoundedImage(
            color: isDarkMode ? MyColors.darkGrey : MyColors.white,
            onTap: () {},
            imgUrl: MyImages.productImg2,
          ),
        ),
      ),
    );
  }
}
