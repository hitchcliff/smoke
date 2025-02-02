import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:single_store_ecommerce/screens/login.dart';
import 'package:single_store_ecommerce/screens/on_boarding.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  GetStorage deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    redirect();
  }

  redirect() async {
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }
}
