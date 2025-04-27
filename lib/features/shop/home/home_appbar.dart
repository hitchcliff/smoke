import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/icons/cart_counter_icon.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/shimmer/shimmer_effect.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/controllers/user_controller.dart';
import 'package:smoke/screens/cart.dart';
import 'package:smoke/utils/constants/text_strings.dart';

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
          Text(MyTexts.appbarLabel,
              style: Theme.of(context).textTheme.labelMedium!),
          Obx(
            () => controller.loading.value
                ? ShimmerEffect(
                    height: 30,
                    width: 100,
                  )
                : TitleText(
                    controller.user.value.fullName,
                  ),
          ),
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
