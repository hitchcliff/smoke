import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/theme/appbar_theme.dart';
import 'package:smoke/utils/theme/elevated_button_theme.dart';
import 'package:smoke/utils/theme/icon_button.dart';
import 'package:smoke/utils/theme/input_decoration.dart';
import 'package:smoke/utils/theme/outline_button.dart';
import 'package:smoke/utils/theme/search_bar.dart';
import 'package:smoke/utils/theme/text_theme.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: "Poppins",
    scaffoldBackgroundColor: MyColors.light,
    primaryColor: MyColors.primary,
    textTheme: MyTextTheme.lightTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButton,
    inputDecorationTheme: MyInputDecorationTheme.light,
    outlinedButtonTheme: MyOutlineButtonTheme.light,
    appBarTheme: MyAppbarTheme.lightAppbarTheme,
    searchBarTheme: MySearchBarTheme.light,
    iconButtonTheme: MyIconButtonTheme.light,
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: "Poppins",
    scaffoldBackgroundColor: MyColors.dark,
    primaryColor: MyColors.primary,
    textTheme: MyTextTheme.darkTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButton,
    inputDecorationTheme: MyInputDecorationTheme.dark,
    outlinedButtonTheme: MyOutlineButtonTheme.dark,
    appBarTheme: MyAppbarTheme.darkAppbarTheme,
    searchBarTheme: MySearchBarTheme.dark,
    iconButtonTheme: MyIconButtonTheme.dark,
  );
}
