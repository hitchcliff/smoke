import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/section_heading.dart';
import 'package:single_store_ecommerce/components/settings/profile_menu.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeading(
          SectionHeadingProps(
            title: MyTexts.settingsProfileInformation,
            titleColor: MyColors.black,
          ),
        ),
        Column(
          children: [
            // ---# Name
            ProfileMenu(
              ProfileMenuProps(
                  title: MyTexts.settingsName,
                  value: "Kevin Nacario",
                  onPressed: () {}),
            ),
            // ---# Username
            ProfileMenu(
              ProfileMenuProps(
                  title: MyTexts.settingsUsername,
                  value: "notkev1n",
                  onPressed: () {}),
            ),
          ],
        )
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
