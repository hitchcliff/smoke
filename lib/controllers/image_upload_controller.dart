import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smoke/components/snackbars/snackbars.dart';
import 'package:smoke/controllers/user_controller.dart';
import 'package:smoke/repositories/user/user_repository.dart';
import 'package:smoke/utils/constants/db_collections.dart';

class ImageUploadController extends GetxController {
  static ImageUploadController get instance => Get.find();

  Rx<bool> loading = false.obs;

  final UserRepository _userRepository = UserRepository.instance;
  final UserController _userController = UserController.instance;

  /// Upload the image
  upload() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 70,
        maxHeight: 512,
        maxWidth: 512,
      );

      if (image == null) return;
      loading.value = true;

      // upload in the storage
      final imageUrl =
          await _userRepository.uploadImage(MyDBCollections.profile, image);

      // upload in the firestore
      Map<String, dynamic> json = {'ProfilePicture': imageUrl};
      await _userRepository.updateSingleField(json);

      // ui update
      _userController.user.value.profilePicture = imageUrl;
      _userController.user.refresh();

      Snackbars.success(title: "Success!", message: "Profile is uploaded");
    } catch (e) {
      Snackbars.error(title: "Error uploading image", message: e.toString());
    } finally {
      loading.value = false;
    }
  }
}
