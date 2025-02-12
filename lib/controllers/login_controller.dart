import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/controllers/user_controller.dart';
import 'package:single_store_ecommerce/repositories/auth/auth_repository.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/local_storage.dart';

class LoginController extends GetxController {
  LoginController get instance => Get.find();

// Variables
  Rx<bool> rememberMe = true.obs;
  Rx<bool> showPassword = false.obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GetStorage localStorage = GetStorage();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  /// Repository
  AuthRepository authRepository = AuthRepository.instance;

  /// Controller
  UserController userController = Get.put(UserController());

  @override
  onInit() {
    email =
        TextEditingController(text: localStorage.read(MyLocalStorage.email));
    password =
        TextEditingController(text: localStorage.read(MyLocalStorage.password));

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
      if (!loginFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

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
      Snackbars.error(title: "Error", message: e.toString());
      Logger().e(e.toString());
    }
  }

  /// Signin with Google using Auth Repo
  googleSignIn() async {
    try {
      /// Loader
      FullScreenLoader.openLoadingDialog(
          "Logging in with Google...", MyImages.docerAnimation);

      /// Google auth
      UserCredential userCredential = await authRepository.signInWithGoogle();

      /// Save user from Google to DB
      await userController.saveUserFromCredentials(userCredential);

      /// Stop loading
      FullScreenLoader.stopLoading();

      /// Redirect
      authRepository.redirect();
    } catch (e) {
      FullScreenLoader.stopLoading();
      Snackbars.error(title: "Error", message: e.toString());
    }
  }
}
