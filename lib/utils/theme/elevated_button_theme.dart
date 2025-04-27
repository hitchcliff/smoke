import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class MyElevatedButtonTheme {
  static final lightElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: MyColors.primary,
      foregroundColor: MyColors.light,
      disabledForegroundColor: MyColors.darkGrey,
      side: const BorderSide(color: MyColors.primary),
      padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: MySizes.fontSizeMd,
          color: MyColors.white,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      ),
    ),
  );

  static final darkElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: MyColors.primary,
      foregroundColor: MyColors.light,
      disabledForegroundColor: MyColors.darkGrey,
      side: const BorderSide(color: MyColors.primary),
      padding: const EdgeInsets.symmetric(vertical: MySizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: MyColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      ),
    ),
  );
}
