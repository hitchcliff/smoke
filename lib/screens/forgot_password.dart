import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/controllers/forget_password_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/screens/login.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/validators/validation.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    ForgetPasswordController controller = Get.put(ForgetPasswordController());

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MyTexts.forgotPasswordTitle,
                    style: theme.textTheme.headlineMedium,
                  ),
                  Text(
                    MyTexts.forgotPasswordDescription,
                    style: theme.textTheme.bodyMedium,
                  ),
                ].gap(height: MySizes.spaceBtwItems),
              ),
              Form(
                key: controller.forgotPasswordFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) => Validation.validateEmail(value),
                      controller: controller.email,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(FontAwesomeIcons.envelope),
                        labelText: MyTexts.forgotPasswordPlaceholder,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.sendPasswordResetEmail,
                        child: const Text(MyTexts.verifyContinueBtn),
                      ),
                    ),

                    // ---# Delete
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Get.off(() => const LoginScreen());
                        },
                        child: const Text("Go back"),
                      ),
                    ),
                  ].gap(height: MySizes.spaceBtwItems),
                ),
              )
            ].gap(height: MySizes.spaceBtwSections),
          ),
        ),
      ),
    );
  }
}
