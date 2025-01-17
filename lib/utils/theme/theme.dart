import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/theme/appbar_theme.dart';
import 'package:single_store_ecommerce/utils/theme/elevated_button_theme.dart';
import 'package:single_store_ecommerce/utils/theme/icon_button.dart';
import 'package:single_store_ecommerce/utils/theme/input_decoration.dart';
import 'package:single_store_ecommerce/utils/theme/outline_button.dart';
import 'package:single_store_ecommerce/utils/theme/search_bar.dart';
import 'package:single_store_ecommerce/utils/theme/text_theme.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
      fontFamily: "Poppins",
      scaffoldBackgroundColor: MyColors.white,
      primaryColor: MyColors.primary,
      textTheme: MyTextTheme.lightTextTheme,
      elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButton,
      inputDecorationTheme: MyInputDecorationTheme.light,
      outlinedButtonTheme: MyOutlineButtonTheme.light,
      appBarTheme: MyAppbarTheme.lightAppbarTheme,
      searchBarTheme: MySearchBarTheme.light,
      iconButtonTheme: MyIconButtonTheme.light);

  static ThemeData darkTheme = ThemeData(
      fontFamily: "Poppins",
      scaffoldBackgroundColor: MyColors.black,
      primaryColor: MyColors.primary,
      textTheme: MyTextTheme.darkTextTheme,
      elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButton,
      inputDecorationTheme: MyInputDecorationTheme.dark,
      outlinedButtonTheme: MyOutlineButtonTheme.dark,
      appBarTheme: MyAppbarTheme.darkAppbarTheme,
      searchBarTheme: MySearchBarTheme.dark,
      iconButtonTheme: MyIconButtonTheme.dark);
}
