import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/repositories/user/user_repository.dart';
import 'package:single_store_ecommerce/screens/login.dart';
import 'package:single_store_ecommerce/screens/navigation.dart';
import 'package:single_store_ecommerce/screens/on_boarding.dart';
import 'package:single_store_ecommerce/screens/success.dart';
import 'package:single_store_ecommerce/screens/verify_email.dart';
import 'package:single_store_ecommerce/utils/constants/local_storage.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  GetStorage deviceStorage = GetStorage();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Current authenticated user
  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    // FlutterNativeSplash.remove();
    redirect();
  }

  /// Redirect user to either login or onboarding screens
  redirect() {
    final User? user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => Navigation());
      } else {
        Get.offAll(() => VerifyEmailScreen(user.email!));
      }

      return;
    }

    deviceStorage.writeIfNull(MyLocalStorage.isFirstTime, true);
    deviceStorage.read(MyLocalStorage.isFirstTime) != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

  /// Login with email & password
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw "Something went wrong ${e.toString()}";
    }
  }

  /// Signin with [Google Auth]
  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await userAccount?.authentication;

      final credentials = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await _auth.signInWithCredential(credentials);
    } catch (e) {
      throw "Something went wrong ${e.toString()}";
    }
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

  /// Forgot password
  sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw "Something went wrong ${e.toString}";
    }
  }

  /// Send email verification
  sendVerificationCode() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
      Snackbars.success(
          title: "Sent email verification code",
          message: "Please check your email to verify your accout.");
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
        Get.offAll(() => SuccessScreen());
        Snackbars.success(
            title: "Congratulations!!!", message: "Verified succesfully");
      }
    });
  }

  /// Manual verification
  verifyEmail() {
    if (_auth.currentUser != null && _auth.currentUser!.emailVerified) {
      Get.off(() => const SuccessScreen());
      Snackbars.success(
          title: "Congratulations!!!", message: "Verified succesfully");
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

  /// Re-authenticate user with email & password
  reAuthenticateUserWithEmailAndPassword(String email, String password) async {
    try {
      /// Create a credential
      AuthCredential credential =
          EmailAuthProvider.credential(email: email, password: password);

      await _auth.currentUser!.reauthenticateWithCredential(credential);
    } catch (e) {
      throw e.toString();
    }
  }

  /// Delete the account from DB
  deleteAccount() async {
    try {
      await UserRepository.instance.delete();
      await _auth.currentUser?.delete();
    } catch (e) {
      throw e.toString();
    }
  }
}
