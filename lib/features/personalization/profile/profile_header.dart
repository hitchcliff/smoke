import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/circle/circle_image.dart';
import 'package:smoke/components/headers/header_wrapper.dart';
import 'package:smoke/controllers/user_controller.dart';
import 'package:smoke/screens/user_info.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UserController controller = UserController.instance;
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return HeaderWrapper(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ---# Appbar
          MyAppBar(
            title: Text(
              "Account",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),

          // ---# Current User
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: MySizes.defaultSpace,
            ),
            leading: Obx(
              () => CircleImage(
                image: controller.user.value.profilePicture,
                isNetworkImg: true,
              ),
            ),
            title: Obx(
              () => Text(controller.user.value.fullName,
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
            subtitle: Text(controller.user.value.email,
                style: Theme.of(context).textTheme.labelMedium),
            trailing: IconButton(
              icon: Icon(
                color: isDarkMode ? MyColors.white : MyColors.black,
                FontAwesomeIcons.penToSquare,
              ),
              onPressed: () {
                Get.to(() => const UserInfoScreen());
              },
            ),
          ),

          const SizedBox(
            height: MySizes.defaultSpace,
          ),
        ],
      ),
    );
  }
}
