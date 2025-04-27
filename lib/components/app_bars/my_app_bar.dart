import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.md),
      child: AppBar(
        title: title,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                style: IconButton.styleFrom(
                  backgroundColor:
                      isDarkMode ? MyColors.light : MyColors.primary,
                  foregroundColor: MyColors.black,
                ),
                icon: const Icon(FontAwesomeIcons.arrowLeft),
                onPressed: () => Get.back(),
              )
            : leadingIcon != null
                ? IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor:
                          isDarkMode ? MyColors.light : MyColors.primary,
                      foregroundColor: MyColors.black,
                    ),
                    onPressed: leadingOnPressed,
                    icon: Icon(leadingIcon),
                  )
                : null,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(MySizes.appBarHeight);
}
