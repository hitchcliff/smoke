import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/controllers/user_controller.dart';
import 'package:single_store_ecommerce/repositories/user/user_repository.dart';
import 'package:single_store_ecommerce/screens/profile.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  GlobalKey<FormState> updateNameFormKey = GlobalKey();

  final UserRepository _userRepository = UserRepository.instance;
  final UserController _userController = UserController.instance;

  @override
  void onInit() {
    super.onInit();

    initializedName();
  }

  /// Simply initialized the current user first and last names
  initializedName() {
    firstName.text = _userController.user.value.firstName;
    lastName.text = _userController.user.value.lastName;
  }

  updateName() async {
    try {
      FullScreenLoader.openLoadingDialog(
          "Updating information...", MyImages.docerAnimation);

      if (!updateNameFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        Snackbars.error(title: "Please recheck the fields.");
        return;
      }

      // Update the name using JSON format
      await _userRepository.updateSingleField({
        "FirstName": firstName.text.trim(),
        "LastName": lastName.text.trim()
      });

      // Update the user controller
      _userController.user.value.firstName = firstName.text.trim();
      _userController.user.value.lastName = lastName.text.trim();

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
