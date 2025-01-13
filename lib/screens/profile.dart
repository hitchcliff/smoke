import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/header_wrapper.dart';
import 'package:single_store_ecommerce/components/my_app_bar.dart';
import 'package:single_store_ecommerce/components/settings/account_settings.dart';
import 'package:single_store_ecommerce/components/settings/app_settings.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
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
              HeaderWrapper(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ---# Appbar
                    MyAppBar(
                      showBackArrow: false,
                      title: Text(
                        "Account",
                        style:
                            Theme.of(context).textTheme.headlineMedium?.apply(
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
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: MySizes.defaultSpace,
                    ),
                  ],
                ),
              ),
              // ---# Account Settings
              const AccountSettings(),
              // ---# App settings
              const AppSettings(),
              // ---# Logout button
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: MySizes.defaultSpace),
                child: SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Logout"),
                  ),
                ),
              ),

              const SizedBox(height: MySizes.spaceBtwItems),
            ].gap(height: MySizes.spaceBtwItems),
          ),
        ),
      ),
    );
  }
}
