import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/dividers/horizontal_divider.dart';
import 'package:smoke/controllers/login_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/image_strings.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';

class SigninWith extends StatelessWidget {
  const SigninWith({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HorizontalDivider(),
            Text(
              MyTexts.loginDivider,
              textAlign: TextAlign.center,
            ),
            HorizontalDivider()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: controller.googleSignIn,
              child: const Image(
                image: AssetImage(MyImages.googleIconImg),
                width: 25,
              ),
            ),
            // const Image(
            //   image: AssetImage(MyImages.fbIconImg),
            //   width: 25,
            // ),
          ].gap(width: MySizes.spaceBtwItems),
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
