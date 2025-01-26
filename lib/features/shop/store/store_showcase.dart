import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/brand/brand_item.dart';
import 'package:single_store_ecommerce/components/card/showcase_brand_card.dart';
import 'package:single_store_ecommerce/components/category/category_images.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class StoreShowcase extends StatelessWidget {
  const StoreShowcase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: ShowcaseBrandCard(
        const BrandItem(
          BrandItemProp(
            image: AssetImage(
              MyImages.brandNike,
            ),
            brandName: MyTexts.brandNike,
            verified: true,
            totalProducts: "256",
          ),
        ),
        CategoryImages(
          [
            CategoryImageProp(
              imgUrl: MyImages.productImg1,
              onTap: () {},
            ),
            CategoryImageProp(
              imgUrl: MyImages.productImg2,
              onTap: () {},
            ),
            CategoryImageProp(
              imgUrl: MyImages.productImg3,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
