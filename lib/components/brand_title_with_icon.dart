import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class BrandTitleWithIcon extends StatelessWidget {
  const BrandTitleWithIcon({
    super.key,
    this.verified = false,
    required this.name,
  });

  final bool verified;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style:
              Theme.of(context).textTheme.bodyMedium?.apply(fontWeightDelta: 4),
        ),
        if (verified)
          const Icon(
            FontAwesomeIcons.solidCircleCheck,
            color: MyColors.verified,
            size: MySizes.iconXs,
          )
      ].gap(width: 5),
    );
  }
}
