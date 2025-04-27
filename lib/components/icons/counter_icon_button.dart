import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class CounterIconButton extends StatelessWidget {
  const CounterIconButton(
    this.icon, {
    super.key,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    return IconButton(
      style: ButtonStyle(
        iconColor:
            WidgetStatePropertyAll(isDark ? MyColors.black : MyColors.light),
        backgroundColor:
            WidgetStatePropertyAll(isDark ? MyColors.light : MyColors.black),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.all(MySizes.sm),
        ),
      ),
      icon: Icon(icon),
      onPressed: onPressed,
    );
  }
}
