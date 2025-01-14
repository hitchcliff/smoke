import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/containers/fullscreen_container.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: FullscreenContainer(
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
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(FontAwesomeIcons.envelope),
                        labelText: MyTexts.forgotPasswordPlaceholder,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(MyTexts.verifyContinueBtn),
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
