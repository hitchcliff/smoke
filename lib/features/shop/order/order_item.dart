import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoke/components/tile/tile.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ---# Order Status
        Row(
          children: [
            const Expanded(
                child: Tile(
              icon: FontAwesomeIcons.bug,
              subtitle: "Processing",
              title: "Jan 27 2025",
            )),
            // ---# Icon
            IconButton(
              icon: const Icon(FontAwesomeIcons.angleRight),
              onPressed: () {},
            ),
          ],
        ),

        const Row(
          children: [
            // ---# Order Tag
            Expanded(
              child: Tile(
                icon: FontAwesomeIcons.tag,
                subtitle: "Tag",
                title: "123456",
                subtitleColor: MyColors.darkGrey,
              ),
            ),

            // ---# Shipping Date
            Expanded(
              child: Tile(
                icon: FontAwesomeIcons.calendar,
                subtitle: "Shipping Date",
                subtitleColor: MyColors.darkGrey,
                title: "03 Feb 2025",
              ),
            ),
          ],
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
