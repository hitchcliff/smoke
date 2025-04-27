import 'package:flutter/material.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/features/personalization/address/address_card.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeading(
          SectionHeadingProps(
              title: "Shipping Address",
              titleColor: MyHelpers.textColor(context: context),
              onPressed: () {},
              showActionButton: true,
              actionText: "Change"),
        ),
        const AddressCard(
          selected: false,
          name: "Kevin Nacario",
          number: "+63 926 833 9430",
          address: "9200 Gitagum, Misamis Oriental, CP Garcia Zone 7, PH",
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
