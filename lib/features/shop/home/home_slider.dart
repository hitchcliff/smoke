import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/rounded/rounded_image.dart';
import 'package:smoke/components/sliders/promo_slider.dart';
import 'package:smoke/controllers/banner_controller.dart';
import 'package:smoke/utils/constants/sizes.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BannerController bannerController = Get.put(BannerController());

    return Obx(
      () => bannerController.loading.value
          ? SizedBox()
          : Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
              child: PromoSlider(
                banners: bannerController.banners
                    .map(
                      (banner) => (RoundedImage(
                        onTap: () {},
                        imgUrl: banner.image,
                        isNetworkImage: true,
                        fit: BoxFit.cover,
                      )),
                    )
                    .toList(),
              ),
            ),
    );
  }
}
