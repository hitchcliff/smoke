import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/controllers/on_boarding_controller.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBoardingController controller = OnBoardingController.instance;

    final bool isDark = MyHelpers.isDarkMode(context);

    return Positioned(
      width: MyHelpers.screenWidth(),
      bottom: MySizes.defaultSpace,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: controller.pageController,
              count: 3,
              onDotClicked: controller.dotNavigate,
              effect: ExpandingDotsEffect(
                dotHeight: 6,
                activeDotColor: isDark ? MyColors.light : MyColors.dark,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.nextPage();
              },
              style: ElevatedButton.styleFrom(shape: const CircleBorder()),
              child: const Icon(
                FontAwesomeIcons.angleRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
