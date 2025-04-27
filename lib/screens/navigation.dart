import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/controllers/navigation_controller.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = MyHelpers.isDarkMode(context);
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          selectedIndex: controller.currentPageIdx.value,
          elevation: 0,
          backgroundColor: isDarkMode ? MyColors.primary : MyColors.secondary,
          onDestinationSelected: (value) =>
              controller.currentPageIdx.value = value,
          destinations: const [
            NavigationDestination(
                icon: Icon(FontAwesomeIcons.house), label: "Home"),
            NavigationDestination(
                icon: Icon(FontAwesomeIcons.store), label: "Store"),
            NavigationDestination(
                icon: Icon(FontAwesomeIcons.heart), label: "Wishlist"),
            NavigationDestination(
                icon: Icon(FontAwesomeIcons.person), label: "Profile")
          ],
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => Container(
            child: controller.screens[controller.currentPageIdx.value],
          ),
        ),
      ),
    );
  }
}
