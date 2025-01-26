import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/components/sliders/promo_slider.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: PromoSlider(
        banners: [
          RoundedImage(onTap: () {}, imgUrl: MyImages.promoBannerImg1),
          RoundedImage(onTap: () {}, imgUrl: MyImages.promoBannerImg2),
          RoundedImage(onTap: () {}, imgUrl: MyImages.promoBannerImg3),
        ],
      ),
    );
  }
}
