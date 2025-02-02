import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:single_store_ecommerce/screens/login.dart';

class OnBoardingController {
  final PageController pageController = PageController();

  static OnBoardingController get instance => Get.find();
  Rx<int> currentPageIdx = 0.obs;

  final GetStorage storage = GetStorage();

// Update page indicator
  updatePageIndicator(idx) {
    currentPageIdx.value = idx;
  }

// Skip page
  skipPage() {
    if (currentPageIdx.value == 2) {
      storage.write("isFirstTime", false);
      Get.offAll(() => const LoginScreen());
    }

    currentPageIdx.value = 2;
    _jump();
  }

// Next Page
  nextPage() {
    if (currentPageIdx.value == 2) {
      storage.write("isFirstTime", false);
      Get.offAll(() => const LoginScreen());
      return;
    }

    currentPageIdx.value++;

    _jump();
  }

// Dot Navigation
  dotNavigate(idx) {
    currentPageIdx.value = idx;

    _jump();
  }

  _jump() {
    pageController.jumpToPage(currentPageIdx.value);
  }
}
