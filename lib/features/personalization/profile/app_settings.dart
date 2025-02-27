import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/components/tile/menu_tile.dart';
import 'package:single_store_ecommerce/screens/load_data.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({
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
              title: MyTexts.headingAppSettings,
              titleColor: isDarkMode ? MyColors.white : MyColors.black,
            ),
          ),
          Column(
            children: [
              MenuTile(
                MenuTileProps(
                  leadingIcon: FontAwesomeIcons.database,
                  title: "Load Data",
                  subtitle: "upload Data to your Cloud Firebase",
                  onTap: () {
                    Get.to(() => const LoadData());
                  },
                ),
              ),
              MenuTile(
                trailing: Switch(
                  value: false,
                  onChanged: (value) {},
                ),
                MenuTileProps(
                  leadingIcon: FontAwesomeIcons.mapPin,
                  title: "Geolocation",
                  subtitle: "Set recommendation based on location",
                  onTap: () {},
                ),
              ),
              MenuTile(
                trailing: Switch(
                  value: false,
                  onChanged: (value) {},
                ),
                MenuTileProps(
                  leadingIcon: FontAwesomeIcons.triangleExclamation,
                  title: "Safe Mode",
                  subtitle: "Search result is safe for all ages",
                  onTap: () {},
                ),
              ),
              MenuTile(
                trailing: Switch(
                  value: false,
                  onChanged: (value) {},
                ),
                MenuTileProps(
                  leadingIcon: FontAwesomeIcons.image,
                  title: "HD Image Quality",
                  subtitle: "Set image quality to be seen",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
