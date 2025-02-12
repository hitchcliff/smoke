import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/repositories/auth/auth_repository.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class ForgetPasswordController extends GetxController {
  ForgetPasswordController get instance => Get.find();

  /// Repository
  final AuthRepository _authRepository = AuthRepository.instance;

  /// Variables
  TextEditingController email = TextEditingController();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      // Loader
      FullScreenLoader.openLoadingDialog(
          "Submitting email...", MyImages.docerAnimation);

      // Validate
      if (!forgotPasswordFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      // Send the email
      await _authRepository.sendPasswordResetEmail(email.text.trim());

      // Stop loader
      FullScreenLoader.stopLoading();

      // Clear the email field
      email.text = "";

      Snackbars.success(
          title: "Email has been sent", message: "Please check your email");
    } catch (e) {
      FullScreenLoader.stopLoading();
      Snackbars.error(title: "Something went wrong", message: e.toString());
    }
  }
}
