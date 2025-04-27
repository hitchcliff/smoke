import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/circle/circle_image.dart';
import 'package:smoke/components/shimmer/shimmer_effect.dart';
import 'package:smoke/controllers/image_upload_controller.dart';
import 'package:smoke/controllers/user_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    UserController userController = UserController.instance;
    ImageUploadController imageUploadController =
        Get.put(ImageUploadController());

    return Column(
      children: [
        Obx(
          () => imageUploadController.loading.value
              ? ShimmerEffect(
                  width: 50,
                  height: 50,
                  radius: 50,
                )
              : CircleImage(
                  image: userController.user.value.profilePicture,
                  isNetworkImg: true,
                ),
        ),
        TextButton(
          onPressed: imageUploadController.upload,
          child: const Text(MyTexts.settingsChangeProfile),
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
