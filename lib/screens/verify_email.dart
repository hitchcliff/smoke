import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/controllers/verify_email_controller.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen(this.email, {super.key});

  final String email;

  @override
  Widget build(BuildContext context) {
    VerifyEmailController controller = Get.put(VerifyEmailController());

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage(MyImages.verifyEmailImg),
                  height: 200,
                ),
                Text(MyTexts.verifyTitle,
                    style: theme.textTheme.headlineMedium),
                Text(email, style: theme.textTheme.bodyLarge),
                Text(
                  MyTexts.verifyDescription,
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),

                // ---# Verify code
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: controller.verifyEmail,
                    child: const Text(MyTexts.verifyContinueBtn),
                  ),
                ),

                // ---# Resend email
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: controller.sendEmailCode,
                    child: const Text(MyTexts.verifyResendBtn),
                  ),
                ),

                // ---# Logout
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: controller.logout,
                    child: const Text("Logout"),
                  ),
                ),
              ].gap(height: MySizes.spaceBtwItems),
            ),
          ),
        ),
      ),
    );
  }
}
