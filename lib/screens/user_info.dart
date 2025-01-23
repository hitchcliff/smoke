import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/settings/personal_information.dart';
import 'package:single_store_ecommerce/components/settings/profile_information.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text(MyTexts.appbarProfile),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                // ---# Picture
                Column(
                  children: [
                    const CircleAvatar(
                      child: Image(
                        image: AssetImage(MyImages.profileImg),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(MyTexts.settingsChangeProfile),
                    ),
                  ].gap(height: MySizes.spaceBtwItems),
                ),
                const Divider(),
                // ---# Profile Information
                const ProfileInformation(),
                const Divider(),
                // ---# Personal Information
                const PersonalInformation(),
              ].gap(height: MySizes.spaceBtwItems),
            ),
          ),
        ),
      ),
    );
  }
}
