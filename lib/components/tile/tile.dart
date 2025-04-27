import 'package:flutter/material.dart';
import 'package:smoke/components/texts/label_info_text.dart';
import 'package:smoke/components/texts/label_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.icon,
    required this.subtitle,
    required this.title,
    this.subtitleColor = MyColors.primary,
  });

  final IconData icon;
  final String subtitle;
  final String title;
  final Color subtitleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: MyHelpers.textColor(context: context)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelInfoText(
              subtitle,
              color: subtitleColor,
              fontWeight: "bold",
            ),
            LabelText(title),
          ],
        ),
      ].gap(width: MySizes.sm),
    );
  }
}
