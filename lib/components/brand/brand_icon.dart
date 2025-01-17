import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

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
          style: Theme.of(context).textTheme.bodyMedium,
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
