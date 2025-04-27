import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoke/components/icons/counter_icon_button.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class AddToCartAppBar extends StatelessWidget {
  const AddToCartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    return Container(
      decoration: BoxDecoration(
        color: isDark ? MyColors.darkerGrey : MyColors.grey,
      ),
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
            child: const BodyText("Add to cart", color: MyColors.white),
          ),
        ],
      ),
    );
  }
}
