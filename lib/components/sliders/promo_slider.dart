import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/containers/circular_container.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/controllers/home_slider_controller.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<RoundedImage> banners;

  @override
  Widget build(BuildContext context) {
    final HomeSliderController controller = Get.put(HomeSliderController());

    return Column(
      children: [
        CarouselSlider(
          carouselController: controller.carouselController,
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (idx, _) => controller.updatePageIdx(idx),
          ),
          items: banners,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                GestureDetector(
                  onTap: () => controller.updatePageIdx(i),
                  child: CircularContainer(
                    width: 4,
                    height: 20,
                    backgroundColor: MyColors.primary,
                    opacity: controller.currentIdx.value == i ? 1 : .5,
                    margin: const EdgeInsets.only(right: MySizes.md),
                  ),
                ),
            ],
          ),
        )
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
