import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/components/tile/menu_tile.dart';
import 'package:smoke/screens/my_address.dart';
import 'package:smoke/screens/my_orders.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: MySizes.defaultSpace,
      ),
      child: Column(
        children: [
          SectionHeading(
            SectionHeadingProps(
              title: MyTexts.headingAccountSettings,
              titleColor: isDarkMode ? MyColors.white : MyColors.black,
            ),
          ),
          Column(
            children: [
              MenuTile(
                MenuTileProps(
                  leadingIcon: FontAwesomeIcons.house,
                  title: "My Address",
                  subtitle: "Set shopping delivery address",
                  onTap: () {
                    Get.to(() => const MyAddressScreen());
                  },
                ),
              ),
              MenuTile(
                MenuTileProps(
                  leadingIcon: FontAwesomeIcons.cartShopping,
                  title: "My Cart",
                  subtitle: "Add, remove products and move to checkout",
                  onTap: () {},
                ),
              ),
              MenuTile(
                MenuTileProps(
                  leadingIcon: FontAwesomeIcons.house,
                  title: "My Orders",
                  subtitle: "In-progress and Completed Orders",
                  onTap: () {
                    Get.to(() => const MyOrdersScreen());
                  },
                ),
              ),
              // MenuTile(
              //   MenuTileProps(
              //     leadingIcon: FontAwesomeIcons.buildingColumns,
              //     title: "Bank Account",
              //     subtitle: "Withdraw balance to registered bank account",
              //     onTap: () {},
              //   ),
              // ),
              // MenuTile(
              //   MenuTileProps(
              //     leadingIcon: FontAwesomeIcons.ticket,
              //     title: "My Coupons",
              //     subtitle: "List of all the discounted coupons",
              //     onTap: () {},
              //   ),
              // ),
              // MenuTile(
              //   MenuTileProps(
              //     leadingIcon: FontAwesomeIcons.bell,
              //     title: "Notifications",
              //     subtitle: "Set any kind of notification message",
              //     onTap: () {},
              //   ),
              // ),
              // MenuTile(
              //   MenuTileProps(
              //     leadingIcon: FontAwesomeIcons.lock,
              //     title: "Account Privacy",
              //     subtitle: "Manage data usage and connected accounts",
              //     onTap: () {},
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
