import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class MyOutlineButtonTheme {
  static OutlinedButtonThemeData light = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.primary,
      textStyle: const TextStyle(
        fontSize: MySizes.fontSizeMd,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: MySizes.buttonHeight,
        horizontal: MySizes.defaultSpace,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      ),
      side: const BorderSide(color: MyColors.primary),
    ),
  );

  static OutlinedButtonThemeData dark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.white,
      textStyle: const TextStyle(
        fontSize: MySizes.fontSizeMd,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: MySizes.buttonHeight,
        horizontal: MySizes.defaultSpace,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MySizes.buttonRadius),
      ),
      side: const BorderSide(color: MyColors.white),
    ),
  );
}
