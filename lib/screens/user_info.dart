import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/snackbars/snackbars.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/features/personalization/profile/profile_information.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/personalization/profile/profile_picture.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text("User Information"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                // ---# Picture
                const ProfilePicture(),
                const Divider(),
                // ---# Profile Information
                const ProfileInformation(),
                const Divider(),
                // ---# Personal Information
                // const PersonalInformation(),

                /// Delete button
                TextButton(
                  onPressed: Snackbars.deleteAccountWarnning,
                  child: BodyText("Delete account", color: MyColors.heart),
                )
              ].gap(height: MySizes.spaceBtwItems),
            ),
          ),
        ),
      ),
    );
  }
}
