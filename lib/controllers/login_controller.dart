import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/repositories/auth/auth_repository.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/local_storage.dart';

class LoginController extends GetxController {
  LoginController get instance => Get.find();

// Variables
  Rx<bool> rememberMe = false.obs;
  Rx<bool> showPassword = false.obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GetStorage localStorage = GetStorage();
  GlobalKey<FormState> key = GlobalKey<FormState>();

  /// Repository
  AuthRepository authRepository = AuthRepository.instance;

  @override
  onInit() {
    email = localStorage.read(MyLocalStorage.email);
    password = localStorage.read(MyLocalStorage.password);

    super.onInit();
  }

  /// Login user through email and password
  login() async {
    try {
      /// Loader
      FullScreenLoader.openLoadingDialog(
        "Logging in...",
        MyImages.docerAnimation,
      );

      /// Validate
      if (!key.currentState!.validate()) return;

      /// Save data if `rememberMe` is `true`
      if (rememberMe.value) {
        localStorage.write(MyLocalStorage.email, email.text.trim());
        localStorage.write(MyLocalStorage.password, password.text.trim());
      }

      /// Login the user through email and password
      await authRepository.loginWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      /// Stop loading
      FullScreenLoader.stopLoading();

      /// Redirect to Navigation if passes the final check
      authRepository.redirect();
    } catch (e) {
      FullScreenLoader.stopLoading();
      throw "Some went wrong ${e.toString()}";
    }
  }
}
