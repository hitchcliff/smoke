import 'package:flutter/material.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/components/settings/profile_menu.dart';
import 'package:smoke/controllers/user_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);
    UserController controller = UserController.instance;

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
            ProfileMenu(
              ProfileMenuProps(
                  title: MyTexts.settingsEmail,
                  value: controller.user.value.email,
                  onPressed: () {}),
            ),
            ProfileMenu(
              ProfileMenuProps(
                  editable: true,
                  title: MyTexts.settingsPhoneNumber,
                  value: controller.user.value.phoneNumber,
                  onPressed: () {}),
            ),
          ],
        )
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
