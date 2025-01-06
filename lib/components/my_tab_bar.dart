import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MyTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: MyColors.primary,
        labelColor: MyColors.black,
        unselectedLabelColor: MyColors.grey,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(MySizes.appBarHeight);
}
