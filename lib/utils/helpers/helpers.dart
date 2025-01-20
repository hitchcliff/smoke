import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/helpers/convertHexToRGB.dart';
import 'package:single_store_ecommerce/utils/helpers/getColor.dart';
import 'package:single_store_ecommerce/utils/helpers/isDark.dart';
import 'package:single_store_ecommerce/utils/helpers/screenHeight.dart';
import 'package:single_store_ecommerce/utils/helpers/screenWidth.dart';

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
}
