import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/components/settings/profile_menu.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Column(
      children: [
        SectionHeading(
          SectionHeadingProps(
            title: MyTexts.settingsPersonalInformation,
            titleColor: isDarkMode ? MyColors.white : MyColors.black,
          ),
        ),
        Column(
          children: [
            // ---# Name
            ProfileMenu(
              ProfileMenuProps(
                  title: MyTexts.settingsUserId,
                  value: "12345",
                  onPressed: () {}),
            ),
            // ---# Username
            ProfileMenu(
              ProfileMenuProps(
                  title: MyTexts.settingsEmail,
                  value: "notkev1n@email.com",
                  onPressed: () {}),
            ),
            // ---# Phone Number
            ProfileMenu(
              ProfileMenuProps(
                  title: MyTexts.settingsPhoneNumber,
                  value: "+63 926 833 9430",
                  onPressed: () {}),
            ),
            // ---# Gender
            ProfileMenu(
              ProfileMenuProps(
                  title: MyTexts.settingsGender,
                  value: "Male",
                  onPressed: () {}),
            ),
            // ---# Date of Birth
            ProfileMenu(
              ProfileMenuProps(
                  title: MyTexts.settingsDateOfBirth,
                  value: "06 Feb, 1998",
                  onPressed: () {}),
            ),
          ],
        )
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
