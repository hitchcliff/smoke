import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/screens/on_boarding.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    redirect();
  }

  redirect() async {
    Get.to(() => const OnBoarding());
  }
}
