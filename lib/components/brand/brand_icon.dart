import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class BrandIcon extends StatelessWidget {
  const BrandIcon({
    super.key,
    required this.name,
    required this.verified,
  });

  final String name;
  final bool verified;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style:
              Theme.of(context).textTheme.labelLarge?.apply(fontWeightDelta: 4),
        ),
        if (verified)
          const Icon(
            FontAwesomeIcons.solidCircleCheck,
            color: MyColors.verified,
            size: MySizes.iconXs,
          )
      ].gap(width: MySizes.xs),
    );
  }
}
