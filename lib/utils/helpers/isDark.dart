import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';

bool kIsDarkMode(BuildContext context) {
  return Theme.of(context).scaffoldBackgroundColor == MyColors.dark;
}
