import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  const LabelText(this.s, {super.key, this.color});

  final Color? color;
  final String s;

  @override
  Widget build(BuildContext context) {
    return Text(s,
        style: Theme.of(context).textTheme.labelMedium?.apply(color: color));
  }
}
