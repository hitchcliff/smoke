import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/models/user_model.dart';
import 'package:single_store_ecommerce/repositories/user/user_repository.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  // Variables
  Rx<bool> loading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;

  // Repository
  final UserRepository _userRepository = Get.put(UserRepository());

  @override
  void onInit() {
    getUser();
    super.onInit();
  }

  /// Get current user
  getUser() async {
    try {
      loading.value = true;
      final fetchUser = await _userRepository.getUser();

      // Logger().d(fetchUser.fullName);
      // Set the user
      user(fetchUser);
    } catch (e) {
      FullScreenLoader.stopLoading();
      Snackbars.error(title: "Error fetching user", message: e.toString());
    } finally {
      loading.value = false;
    }
  }

  /// Save the user from Google to DB
  saveUserFromCredentials(UserCredential? userCredential) async {
    try {
      FullScreenLoader.openLoadingDialog(
          "Saving user...", MyImages.docerAnimation);

      if (userCredential == null) {
        FullScreenLoader.stopLoading();
        return;
      }

      final nameParts =
          UserModel.nameParts(userCredential.user!.displayName ?? "");
      final userName =
          UserModel.generateUsername(userCredential.user!.displayName ?? "");

      final user = UserModel(
        id: userCredential.user!.uid,
        firstName: nameParts[0],
        lastName: nameParts.length > 1 ? nameParts.sublist(1).join(" ") : "",
        username: userName,
        email: userCredential.user!.email ?? "",
        phoneNumber: userCredential.user!.phoneNumber ?? "",
        profilePicture: userCredential.user!.photoURL ?? "",
      );

      await _userRepository.save(user);

      FullScreenLoader.stopLoading();
    } catch (e) {
      Snackbars.error(title: "Error saving user", message: e.toString());
      FullScreenLoader.stopLoading();
    }
  }
}
