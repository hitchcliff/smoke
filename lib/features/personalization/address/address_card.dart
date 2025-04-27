import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    required this.selected,
    required this.name,
    required this.number,
    required this.address,
  });

  final bool selected;
  final String name;
  final String number;
  final String address;

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(MySizes.md),
      decoration: BoxDecoration(
        border: Border.all(color: selected ? MyColors.primary : MyColors.grey),
        borderRadius: BorderRadius.circular(MySizes.defaultRadius),
        color: selected
            ? MyColors.primary.withOpacity(.4)
            : isDark
                ? MyColors.black
                : MyColors.white,
      ),
      child: Stack(
        children: [
          // ---# Details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyText(
                name,
                fontWeight: "bold",
              ),
              BodyText(number),
              BodyText(address),
            ],
          ),

          // ---# Checkmark
          if (selected)
            const Positioned(
              top: 0,
              right: 0,
              child: Icon(FontAwesomeIcons.solidCircleCheck,
                  color: MyColors.primary),
            ),
        ],
      ),
    );
  }
}
