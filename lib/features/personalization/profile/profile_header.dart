import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/headers/header_wrapper.dart';
import 'package:single_store_ecommerce/screens/user_info.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HeaderWrapper(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ---# Appbar
          MyAppBar(
            showBackArrow: false,
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
            leading: const CircleAvatar(
              child: Image(
                image: AssetImage(MyImages.profileImg),
              ),
            ),
            title: Text("Kevin Nacario",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.apply(color: MyColors.white)),
            subtitle: Text("kevin@email.com",
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
                Get.to(() => const UserInfo());
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
