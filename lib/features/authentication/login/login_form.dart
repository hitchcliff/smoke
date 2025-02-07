import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/controllers/login_controller.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/screens/create_account.dart';
import 'package:single_store_ecommerce/screens/forgot_password.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/validators/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    return Form(
      key: controller.key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // email field
          TextFormField(
            controller: controller.email,
            validator: (value) => Validation.validateEmail(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.envelope),
              labelText: MyTexts.loginPlaceholderEmail,
            ),
          ),

          // password field
          Obx(
            () => TextFormField(
              obscureText: controller.showPassword.value,
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.key),
                labelText: MyTexts.loginPlaceholderPw,
                suffixIcon: IconButton(
                  icon: Icon(controller.showPassword.value
                      ? FontAwesomeIcons.eyeSlash
                      : FontAwesomeIcons.eye),
                  onPressed: () {
                    controller.showPassword.value =
                        !controller.showPassword.value;
                  },
                ),
              ),
            ),
          ),

          // remember me & forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.rememberMe.value,
                      onChanged: (value) {
                        controller.rememberMe.value = value!;
                      },
                    ),
                  ),
                  const Text(MyTexts.loginRememberMe),
                ],
              ),

              /// Go to forgot password screen
              TextButton(
                onPressed: () {
                  Get.to(() => const ForgotPassword());
                },
                child: const Text(MyTexts.loginForgotPw),
              ),
            ],
          ),

          // sign in btn
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: controller.login,
              child: const Text(MyTexts.loginSignIn),
            ),
          ),

          // create account btn
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const CreateAccount());
                },
                child: const Text(MyTexts.loginSignUp)),
          ),
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
