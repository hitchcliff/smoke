import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/bars/close_app_bar.dart';
import 'package:single_store_ecommerce/components/containers/fullscreen_container.dart';
import 'package:single_store_ecommerce/components/forms/register_form.dart';
import 'package:single_store_ecommerce/components/forms/signin_with.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: closeAppBar,
      ),
      body: SafeArea(
        child: FullscreenContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyTexts.registerTitle,
                style: theme.textTheme.headlineMedium,
                textAlign: TextAlign.left,
              ),
              const RegisterForm(),
              const SigninWith(),
            ].gap(height: MySizes.spaceBtwSections),
          ),
        ),
      ),
    );
  }
}
