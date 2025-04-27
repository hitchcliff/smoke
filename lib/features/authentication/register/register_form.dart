import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/controllers/register_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/authentication/register/privacy_policy_checkbox.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/validators/validation.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());

    return Form(
      key: controller.registerFormKey,
      child: Column(
        children: [
          Row(
            children: [
              // first name
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      Validation.validateEmptyText("First Name", value),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.user),
                    labelText: MyTexts.registerFirstName,
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      Validation.validateEmptyText("Last Name", value),
                  decoration: const InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.user),
                      labelText: MyTexts.registerLastName),
                ),
              ),
            ].gap(width: MySizes.spaceBtwItems),
          ),
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                Validation.validateEmptyText("Username", value),
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.userCheck),
              labelText: MyTexts.registerUsername,
            ),
          ),
          TextFormField(
            controller: controller.email,
            validator: (value) => Validation.validateEmail(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.envelope),
              labelText: MyTexts.registerEmail,
            ),
          ),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => Validation.validatePhoneNumber(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.phone),
              labelText: MyTexts.registerPhoneNumber,
            ),
          ),
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => Validation.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.lock),
                labelText: MyTexts.registerPassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.hidePassword.value
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash,
                  ),
                  onPressed: () {
                    controller.hidePassword.value =
                        !controller.hidePassword.value;
                  },
                ),
              ),
            ),
          ),
          PrivacyPolicyCheckbox(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: controller.register,
              child: const Text(MyTexts.registerCreateAccount),
            ),
          ),
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
