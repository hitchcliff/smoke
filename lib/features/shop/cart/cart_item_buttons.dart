import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class CartItemButtons extends StatelessWidget {
  const CartItemButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          iconSize: MySizes.iconSm,
          constraints: const BoxConstraints(maxWidth: 30, maxHeight: 30),
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(MyColors.darkGrey),
            iconColor: WidgetStatePropertyAll(MyColors.white),
          ),
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.minus),
        ),
        const BodyText("0"),
        IconButton(
          iconSize: MySizes.iconSm,
          constraints: const BoxConstraints(maxWidth: 30, maxHeight: 30),
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(MyColors.primary),
            iconColor: WidgetStatePropertyAll(MyColors.white),
          ),
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.plus),
        ),
      ].gap(width: MySizes.sm),
    );
  }
}
