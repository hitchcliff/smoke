import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/models/user/user_model.dart';
import 'package:single_store_ecommerce/repositories/user/user_repository.dart';

class UserController extends GetxController {
  UserController get instance => Get.find();

  final UserRepository _userRepository = UserRepository.instance;

  /// Save the user from Google to DB
  saveUserFromCredentials(UserCredential? userCredential) async {
    try {
      if (userCredential == null) return;

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
    } catch (e) {
      throw "Something went wrong ${e.toString()}";
    }
  }
}
