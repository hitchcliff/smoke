import 'package:flutter/material.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/personalization/profile/account_settings.dart';
import 'package:smoke/features/personalization/profile/app_settings.dart';
import 'package:smoke/features/personalization/profile/profile_header.dart';
import 'package:smoke/features/personalization/profile/profile_logout_btn.dart';
import 'package:smoke/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
