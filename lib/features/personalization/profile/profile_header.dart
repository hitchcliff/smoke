import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/circle/circle_image.dart';
import 'package:single_store_ecommerce/components/headers/header_wrapper.dart';
import 'package:single_store_ecommerce/controllers/user_controller.dart';
import 'package:single_store_ecommerce/screens/user_info.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UserController controller = UserController.instance;

    return HeaderWrapper(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ---# Appbar
          MyAppBar(
            title: Text(
              "Account",
              style: Theme.of(context).textTheme.headlineMedium?.apply(
                    color: MyColors.white,
                  ),
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
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.apply(color: MyColors.white)),
            ),
            subtitle: Text(controller.user.value.email,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.apply(color: MyColors.white)),
            trailing: IconButton(
              icon: const Icon(
                FontAwesomeIcons.penToSquare,
                color: MyColors.white,
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
