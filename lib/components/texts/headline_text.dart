import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText(this.text, {super.key, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineLarge
          ?.apply(color: color, fontSizeDelta: 36),
    );
  }
}
