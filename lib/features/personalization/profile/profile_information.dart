import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/components/settings/profile_menu.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Column(
      children: [
        SectionHeading(
          SectionHeadingProps(
            title: MyTexts.settingsProfileInformation,
            titleColor: isDarkMode ? MyColors.white : MyColors.black,
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
