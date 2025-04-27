import 'package:flutter/material.dart';
import 'package:smoke/components/texts/collapse_text.dart';
import 'package:smoke/components/texts/label_info_text.dart';
import 'package:smoke/components/texts/label_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard(
      {super.key,
      required this.name,
      required this.date,
      required this.message});

  final String name;
  final String date;
  final String message;

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.only(left: MySizes.defaultSpace),
      child: Container(
        padding: const EdgeInsets.all(MySizes.md),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySizes.cardRadius),
          color: isDark ? MyColors.darkerGrey : MyColors.grey,
        ),
        child: Column(
          children: [
            // ---# Store owner info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelText(name),
                LabelInfoText(date),
              ],
            ),

            // ---# Owner reply
            CollapseText(
              message,
            ),
          ].gap(height: MySizes.spaceBtwItems),
        ),
      ),
    );
  }
}
