import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/icons/cart_counter_icon.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/shimmer/shimmer_effect.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/controllers/user_controller.dart';
import 'package:single_store_ecommerce/screens/cart.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UserController controller = Get.put(UserController());

    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyTexts.appbarLabel,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: MyColors.grey),
          ),
          Obx(() => controller.loading.value
              ? ShimmerEffect(
                  height: 50,
                  width: 80,
                )
              : TitleText(
                  controller.user.value.fullName,
                  color: MyColors.white,
                )),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {
            Get.to(() => const CartScreen());
          },
        ),
      ],
    );
  }
}
