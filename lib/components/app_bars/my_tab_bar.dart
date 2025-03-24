import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MyTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Material(
      color: isDarkMode ? MyColors.dark : MyColors.light,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: MyColors.primary,
        labelColor: isDarkMode ? MyColors.light : MyColors.dark,
        unselectedLabelColor: isDarkMode ? MyColors.white : MyColors.black,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(MySizes.appBarHeight);
}
