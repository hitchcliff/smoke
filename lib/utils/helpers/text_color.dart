
import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/helpers/isDark.dart';

enum TextColor {
  reverse,
}

Color kTextColor({required BuildContext context, TextColor? textColor}) {
  bool isDark = kIsDarkMode(context);

  switch (textColor) {
    case TextColor.reverse:
      return isDark ? MyColors.black : MyColors.white;
    default:
      return isDark ? MyColors.white : MyColors.dark;
  }
}
