import 'package:flutter/material.dart';
import 'package:smoke/components/containers/circular_container.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class VariationChip extends StatelessWidget {
  const VariationChip(
    this.text, {
    super.key,
    required this.selected,
    required this.onSelected,
  });

  final bool selected;
  final void Function(bool) onSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    bool isColor = MyHelpers.getColor(text) != null;

    return ChoiceChip(
      selected: selected,
      onSelected: onSelected,
      selectedColor: MyColors.primary,
      backgroundColor: isColor ? MyHelpers.getColor(text)! : MyColors.primary,
      checkmarkColor: MyColors.white,
      label: isColor ? const SizedBox() : BodyText(text, color: MyColors.white),
      labelStyle: TextStyle(
        color: selected ? MyColors.white : null,
      ),
      avatar: isColor
          ? CircularContainer(
              width: 50,
              height: 50,
              backgroundColor: MyHelpers.getColor(text)!,
            )
          : null,
      labelPadding: isColor ? EdgeInsets.zero : null,
      padding: isColor ? EdgeInsets.zero : null,
      shape: isColor ? const CircleBorder() : null,
    );
  }
}
