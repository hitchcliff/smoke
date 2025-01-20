import 'package:flutter/material.dart';

class LabelInfoText extends StatelessWidget {
  const LabelInfoText(this.text, {super.key, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.apply(color: color),
    );
  }
}
