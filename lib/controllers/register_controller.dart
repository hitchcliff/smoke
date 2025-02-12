import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/models/user/user_model.dart';
import 'package:single_store_ecommerce/repositories/auth/auth_repository.dart';
import 'package:single_store_ecommerce/repositories/user/user_repository.dart';
import 'package:single_store_ecommerce/screens/verify_email.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class RegisterController extends GetxController {
  RegisterController get instance => Get.find();

  // ---# Firebase
  AuthRepository authRepository = AuthRepository.instance;
  UserRepository userRepository = Get.put(UserRepository());

  // ---# Variables
  Rx<bool> hidePassword = true.obs;
  Rx<bool> privacyPolicy = false.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  // ---# Signup
  register() async {
    try {
      // ---# Loading
      FullScreenLoader.openLoadingDialog(
        "We are processing your information",
        MyImages.docerAnimation,
      );

      // ---# Form validation
      if (!registerFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      // ---# Privacy policy check
      if (!privacyPolicy.value) {
        FullScreenLoader.stopLoading();
        Snackbars.warning(
          title: "Accept Privacy Policy",
          message: "You need to agree to our terms and policy.",
        );

        return;
      }

      // ---# Register user in Firebase Auth & Save user in Firebase
      final userCredential = await authRepository.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // ---# Create User model
      final userModel = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      // ---# Store in firestore
      await userRepository.save(userModel);

      // ---# Remove loader
      FullScreenLoader.stopLoading();

      // ---# Show success message
      Snackbars.success(
        title: "Congratulations",
        message: "Your account has been created!",
      );

      // ---# Move to verify email
      Get.to(() => VerifyEmailScreen(email.text.trim()));
    } catch (e) {
      // ---# Remove loader
      FullScreenLoader.stopLoading();

      Snackbars.error(
        title: "Something is wrong",
        message: e.toString(),
      );
    }
  }
}
