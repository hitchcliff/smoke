import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class MySearchBarTheme {
  static SearchBarThemeData light = SearchBarThemeData(
    elevation: WidgetStateProperty.all(0),
    backgroundColor: WidgetStateProperty.all(MyColors.white),
    shape: WidgetStateProperty.all(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(MySizes.md)),
      ),
    ),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(
        horizontal: MySizes.md,
        vertical: 0,
      ),
    ),
  );

  static SearchBarThemeData dark = SearchBarThemeData(
    elevation: WidgetStateProperty.all(0),
    backgroundColor: WidgetStateProperty.all(MyColors.black),
    shape: WidgetStateProperty.all(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(MySizes.md)),
      ),
    ),
    textStyle: WidgetStateProperty.all(
      const TextStyle(
        color: MyColors.white,
      ),
    ),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(
        horizontal: MySizes.md,
        vertical: 0,
      ),
    ),
  );
}
