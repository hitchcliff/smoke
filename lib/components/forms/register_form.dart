import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/screens/account_created.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              // first name
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(FontAwesomeIcons.user),
                    labelText: MyTexts.registerFirstName,
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.user),
                      labelText: MyTexts.registerLastName),
                ),
              ),
            ].gap(width: MySizes.spaceBtwItems),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.userCheck),
              labelText: MyTexts.registerUsername,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.envelope),
              labelText: MyTexts.registerEmail,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.phone),
              labelText: MyTexts.registerPhoneNumber,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.lock),
              labelText: MyTexts.registerPassword,
            ),
          ),
          Row(
            children: [
              SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: true, onChanged: (value) {})),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "I agree to ", style: theme.textTheme.bodySmall),
                    TextSpan(
                      text: "Privacy Policy ",
                      style: theme.textTheme.bodyMedium!.apply(
                        decoration: TextDecoration.underline,
                        color: MyColors.primary,
                        decorationColor: MyColors.primary,
                      ),
                    ),
                    TextSpan(text: "and ", style: theme.textTheme.bodySmall),
                    TextSpan(
                      text: "Terms of use",
                      style: theme.textTheme.bodyMedium!.apply(
                        decoration: TextDecoration.underline,
                        color: MyColors.primary,
                        decorationColor: MyColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const AccountCreated());
              },
              child: const Text(MyTexts.registerCreateAccount),
            ),
          ),
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
