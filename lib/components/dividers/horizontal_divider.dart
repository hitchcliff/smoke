import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    return Expanded(
      flex: 1,
      child: Container(
        height: 1,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration:
            BoxDecoration(color: isDark ? MyColors.white : MyColors.grey),
      ),
    );
  }
}
