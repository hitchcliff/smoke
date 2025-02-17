import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/widgets/animation_loader.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/screens/navigation.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimationLoaderWidget(
                animation: MyImages.successfullyRegisterAnimation,
                text: "",
                showAction: true,
                actionText: "Continue",
                onActionPressed: () => {Get.off(() => const Navigation())},
              ),
            ].gap(height: MySizes.spaceBtwItems),
          ),
        ),
      ),
    );
  }
}
