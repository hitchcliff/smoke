import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/controllers/delete_user_controller.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class Snackbars {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: MyHelpers.isDarkMode(Get.context!)
                ? MyColors.darkerGrey.withOpacity(0.9)
                : MyColors.grey.withOpacity(0.9),
          ),
          child: Center(
            child: Text(message,
                style: Theme.of(Get.context!).textTheme.labelLarge),
          ),
        ),
      ),
    );
  }

  static success({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: MyColors.white,
      backgroundColor: MyColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(FontAwesomeIcons.check, color: MyColors.white),
    );
  }

  static warning({required title, message = '', duration = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: MyColors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(FontAwesomeIcons.triangleExclamation,
          color: MyColors.white),
    );
  }

  static error({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: MyColors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(FontAwesomeIcons.triangleExclamation,
          color: MyColors.white),
    );
  }

  static deleteAccountWarnning() {
    DeleteUserController deleteUserController = Get.put(DeleteUserController());

    Get.defaultDialog(
      middleTextStyle: TextStyle(color: MyColors.black),
      contentPadding: const EdgeInsets.all(MySizes.defaultSpace),
      title: "Delete Account",
      middleText:
          "Are you sure you want to delete your account? This action is irreversible, all your data will be removed permanently.",
      cancel: TextButton(
        onPressed: () {
          Navigator.of(Get.overlayContext!).pop();
        },
        child: BodyText(
          "Cancel",
          color: MyColors.black,
        ),
      ),
      confirm: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.heart,
            side: BorderSide(color: MyColors.heart)),
        onPressed: () {
          Navigator.of(Get.overlayContext!).pop();
          deleteUserController.deleteUserAccount();
        },
        child: Text("Delete"),
      ),
    );
  }
}
