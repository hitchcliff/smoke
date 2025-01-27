import 'package:flutter/material.dart';

class LabelInfoText extends StatelessWidget {
  const LabelInfoText(this.text,
      {super.key, this.color, this.fontWeight = "normal"});

  final String text;
  final Color? color;
  final String? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelMedium?.apply(
          color: color, fontWeightDelta: fontWeight == "normal" ? 1 : 5),
    );
  }
}
