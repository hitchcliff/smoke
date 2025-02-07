import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/screens/login.dart';
import 'package:single_store_ecommerce/screens/on_boarding.dart';
import 'package:single_store_ecommerce/screens/success.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  GetStorage deviceStorage = GetStorage();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    // FlutterNativeSplash.remove();
    redirect();
  }

  /// Redirect user to either login or onboarding screens
  redirect() {
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

  /// Register email with password
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw "Something went wrong ${e.toString()}";
    }
  }

  /// Send email verification
  sendVerificationCode() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
      Snackbars.success(title: "Sent email verification code");
    } catch (e) {
      throw "Something went wrong ${e.toString()}";
    }
  }

  /// Auto redirect
  autoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      // ---# reloads the user
      await _auth.currentUser!.reload();

      if (_auth.currentUser!.emailVerified) {
        timer.cancel();
        Get.off(() => SuccessScreen());
        Snackbars.success(title: "Verified Successfully!");
      }
    });
  }

  /// Manual verification
  verifyEmail() {
    if (_auth.currentUser != null && _auth.currentUser!.emailVerified) {
      Get.off(() => const SuccessScreen());
      Snackbars.success(title: "Verified Successfully!");
    }
  }

  /// Logout
  logout() async {
    try {
      await _auth.signOut();
      Get.offAll(() => const LoginScreen());
    } catch (e) {
      throw "Something went wrong ${e.toString()}";
    }
  }
}
