import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/helpers/convertHexToRGB.dart';
import 'package:single_store_ecommerce/utils/helpers/getAverage.dart';
import 'package:single_store_ecommerce/utils/helpers/getColor.dart';
import 'package:single_store_ecommerce/utils/helpers/getPercentSale.dart';
import 'package:single_store_ecommerce/utils/helpers/isDark.dart';
import 'package:single_store_ecommerce/utils/helpers/screenHeight.dart';
import 'package:single_store_ecommerce/utils/helpers/screenWidth.dart';
import 'package:single_store_ecommerce/utils/helpers/text_color.dart';

class MyHelpers {
  static double screenWidth() {
    return kScreenWidth();
  }

  static double screenHeight() {
    return kScreenHeight();
  }

  static bool isDarkMode(BuildContext context) {
    return kIsDarkMode(context);
  }

  static Map<String, int> convertHextToRGB(String hex) {
    return kConvertHextToRGB(hex);
  }

  static Color? getColor(String text) {
    return kGetColor(text);
  }

  static Color textColor(
      {required BuildContext context, TextColor? textColor}) {
    return kTextColor(context: context, textColor: textColor);
  }

  static String getPercentSale(num price, num salePrice) {
    return kGetPercentSale(price: price, salePrice: salePrice);
  }

  static String getAverage(List<double> scores) {
    return kGetAverage(scores);
  }

  static Map<int, double> getRatings(List<double> scores) {
    return kGetRatings(scores);
  }
}
