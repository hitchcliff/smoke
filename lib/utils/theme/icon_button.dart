import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';

class MyIconButtonTheme {
  static IconButtonThemeData light = IconButtonThemeData(
    style: IconButton.styleFrom(hoverColor: MyColors.black),
  );
  static IconButtonThemeData dark = IconButtonThemeData(
    style: IconButton.styleFrom(hoverColor: MyColors.white),
  );
}
