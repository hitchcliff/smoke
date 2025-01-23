import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  const BodyText(this.text,
      {super.key, this.color, this.fontWeight = "normal"});

  final String text;
  final Color? color;
  final String fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.apply(
          color: color, fontWeightDelta: fontWeight == "normal" ? 1 : 5),
    );
  }
}
