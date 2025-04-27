import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class MyInputDecorationTheme {
  static InputDecorationTheme light = InputDecorationTheme(
    suffixIconColor: MyColors.grey,
    prefixIconColor: MyColors.darkerGrey,
    hintStyle: TextStyle(color: MyColors.black),
    labelStyle: const TextStyle(
      fontSize: MySizes.fontSizeMd,
      color: MyColors.black,
    ),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: MyColors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: MyColors.black),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  static InputDecorationTheme dark = InputDecorationTheme(
    suffixIconColor: MyColors.softGrey,
    prefixIconColor: MyColors.softGrey,
    hintStyle: TextStyle(color: MyColors.white),
    labelStyle:
        const TextStyle(fontSize: MySizes.fontSizeMd, color: MyColors.white),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: MyColors.white),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(width: 1, color: MyColors.white),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
