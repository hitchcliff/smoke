import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/features/personalization/profile/account_settings.dart';
import 'package:single_store_ecommerce/features/personalization/profile/app_settings.dart';
import 'package:single_store_ecommerce/features/personalization/profile/profile_header.dart';
import 'package:single_store_ecommerce/features/personalization/profile/profile_logout_btn.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---# Header
              const ProfileHeader(),
              // ---# Account Settings
              const AccountSettings(),
              // ---# App settings
              const AppSettings(),
              // ---# Logout button
              const ProfileLogoutBtn(),

              const SizedBox(height: MySizes.spaceBtwItems),
            ].gap(height: MySizes.spaceBtwItems),
          ),
        ),
      ),
    );
  }
}
