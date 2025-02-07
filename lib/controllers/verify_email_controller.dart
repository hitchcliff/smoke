import 'package:get/get.dart';
import 'package:single_store_ecommerce/repositories/auth/auth_repository.dart';

class VerifyEmailController extends GetxController {
  VerifyEmailController get instance => Get.find();

  AuthRepository _authRepository = AuthRepository.instance;

  /// Send email and initiate the automatic redirection
  @override
  void onInit() {
    sendEmailCode();
    redirect();
    super.onInit();
  }

  /// Send/Re-send email the verification code
  sendEmailCode() async {
    await _authRepository.sendVerificationCode();
  }

  /// Automatically redirect user once verified
  redirect() {
    _authRepository.autoRedirect();
  }

  /// Manual email verification
  verifyEmail() {
    _authRepository.verifyEmail();
  }
}
