import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/containers/fullscreen_container.dart';
import 'package:single_store_ecommerce/features/authentication/login/login_form.dart';
import 'package:single_store_ecommerce/components/forms/signin_with.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/features/authentication/login/login_header.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FullscreenContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginHeader(),
              const LoginForm(),
              const SigninWith(),
            ].gap(height: MySizes.spaceBtwSections),
          ),
        ),
      ),
    );
  }
}
