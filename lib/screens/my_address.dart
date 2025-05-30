import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/personalization/address/address_card.dart';
import 'package:smoke/screens/add_address.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("My Address"),
        showBackArrow: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddAddressScreen());
        },
        backgroundColor: MyColors.primary,
        child: const Icon(FontAwesomeIcons.plus, color: MyColors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                // ---# Addresses
                const AddressCard(
                  selected: false,
                  name: "Kevin Nacario",
                  number: "+63 926 833 9430",
                  address:
                      "9200 Gitagum, Misamis Oriental, CP Garcia Zone 7, PH",
                ),

                const AddressCard(
                  selected: true,
                  name: "Kevin Nacario",
                  number: "+63 926 833 9430",
                  address:
                      "9200 Gitagum, Misamis Oriental, CP Garcia Zone 7, PH",
                ),
              ].gap(height: MySizes.spaceBtwItems),
            ),
          ),
        ),
      ),
    );
  }
}
