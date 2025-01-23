import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/texts/label_text.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class RatingCircularBar extends StatelessWidget {
  const RatingCircularBar(this.text, {super.key, required this.value});

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: LabelText(text)),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 10,
            color: MyColors.grey,
            valueColor: const AlwaysStoppedAnimation(MyColors.primary),
            borderRadius: BorderRadius.circular(MySizes.defaultRadius),
          ),
        )
      ],
    );
  }
}
