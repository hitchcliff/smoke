import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/features/personalization/profile/screens/re_authenticate.dart';
import 'package:single_store_ecommerce/repositories/auth/auth_repository.dart';
import 'package:single_store_ecommerce/screens/login.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class DeleteUserController extends GetxController {
  static DeleteUserController get instance => Get.find();

  // Variables
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Rx<bool> hidePassword = true.obs;
  GlobalKey<FormState> deleteUserFormKey = GlobalKey();

  // Repositories
  final AuthRepository _authRepository = AuthRepository.instance;

  /// Check the provider
  deleteUserAccount() async {
    /// Check the provider
    final provider =
        _authRepository.authUser?.providerData.map((e) => e.providerId).first;
    if (provider!.isEmpty) {
      FullScreenLoader.stopLoading();
      return;
    }

    if (provider == "google.com") {
      await _authRepository.signInWithGoogle();
      await _authRepository.deleteAccount();
    } else {
      Get.to(() => const ReAuthenticateScreen());
    }
  }

  reAuthenticate() async {
    try {
      FullScreenLoader.openLoadingDialog(
          "Deleting account...", MyImages.docerAnimation);

      if (!deleteUserFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      // Authenticate first
      await _authRepository.reAuthenticateUserWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // Delete the user record
      await _authRepository.deleteAccount();

      FullScreenLoader.stopLoading();
      Get.offAll(() => const LoginScreen());
    } catch (e) {
      FullScreenLoader.stopLoading();
      Snackbars.error(title: "Error re-authenticating", message: e.toString());
    }
  }
}
