import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/screens/create_account.dart';
import 'package:single_store_ecommerce/screens/forgot_password.dart';
import 'package:single_store_ecommerce/screens/navigation.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // email field
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.envelope),
              labelText: MyTexts.loginPlaceholderEmail,
            ),
          ),

          // password field
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.key),
              labelText: MyTexts.loginPlaceholderPw,
              suffixIcon: Icon(FontAwesomeIcons.eyeSlash),
            ),
          ),

          // remember me & forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(MyTexts.loginRememberMe),
                ],
              ),
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
              onPressed: () {
                Get.to(() => const Navigation());
              },
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
