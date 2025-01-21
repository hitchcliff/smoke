import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/icons/counter_icon_button.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class AddToCartAppBar extends StatelessWidget {
  const AddToCartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: MyColors.dark),
      padding: const EdgeInsets.all(MySizes.md),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                CounterIconButton(
                  FontAwesomeIcons.minus,
                  onPressed: () {},
                ),
                const TitleText("2"),
                CounterIconButton(
                  FontAwesomeIcons.plus,
                  onPressed: () {},
                ),
              ].gap(width: MySizes.sm),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(
                    horizontal: MySizes.md, vertical: MySizes.md),
              ),
            ),
            child: const BodyText("Add to cart"),
          ),
        ],
      ),
    );
  }
}
