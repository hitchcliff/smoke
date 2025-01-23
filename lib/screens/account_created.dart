import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/app_bars/close_app_bar.dart';
import 'package:single_store_ecommerce/components/containers/fullscreen_container.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/screens/login.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class AccountCreated extends StatelessWidget {
  const AccountCreated({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: closeAppBar,
      ),
      body: SafeArea(
        child: FullscreenContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(MyImages.accountCreatedImg),
                height: 200,
              ),
              Text(
                MyTexts.accountCreatedTitle,
                style: theme.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              Text(
                MyTexts.accountCreatedDescription,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const Login());
                  },
                  child: const Text(MyTexts.verifyContinueBtn),
                ),
              ),
            ].gap(height: MySizes.spaceBtwItems),
          ),
        ),
      ),
    );
  }
}
