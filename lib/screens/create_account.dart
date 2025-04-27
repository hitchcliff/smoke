import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/close_app_bar.dart';
import 'package:smoke/components/containers/fullscreen_container.dart';
import 'package:smoke/features/authentication/register/register_form.dart';
import 'package:smoke/components/forms/signin_with.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';

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
