import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/controllers/on_boarding_controller.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnBoardingController controller = OnBoardingController.instance;

    return Positioned(
      top: MySizes.defaultSpace,
      right: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          controller.skipPage();
        },
        child: const Text("Skip"),
      ),
    );
  }
}
