import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/controllers/user_controller.dart';
import 'package:single_store_ecommerce/repositories/user/user_repository.dart';
import 'package:single_store_ecommerce/screens/profile.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class UpdatePhoneNumberController extends GetxController {
  static UpdatePhoneNumberController get instance => Get.find();

  TextEditingController phoneNumber = TextEditingController();
  GlobalKey<FormState> updatePhoneNumberFormKey = GlobalKey();

  final UserRepository _userRepository = UserRepository.instance;
  final UserController _userController = UserController.instance;

  @override
  void onInit() {
    super.onInit();

    initializedName();
  }

  /// Simply initialized the current user first and last names
  initializedName() {
    phoneNumber.text = _userController.user.value.phoneNumber;
  }

  updatePhoneNumber() async {
    try {
      FullScreenLoader.openLoadingDialog(
          "Updating information...", MyImages.docerAnimation);

      if (!updatePhoneNumberFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        Snackbars.error(title: "Please recheck the fields.");
        return;
      }

      // Update the name using JSON format
      await _userRepository.updateSingleField({
        "phoneNumber": phoneNumber.text.trim(),
      });

      // Update the user controller
      _userController.user.value.phoneNumber = phoneNumber.text.trim();

      FullScreenLoader.stopLoading();
      Snackbars.success(
          title: "Successfully updated", message: "First name & Last Name");

      // Redirect user
      Get.off(() => const ProfileScreen());
    } catch (e) {
      Snackbars.error(title: "Error updating", message: e.toString());
      FullScreenLoader.stopLoading();
    }
  }
}
