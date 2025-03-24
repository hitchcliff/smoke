import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

// ignore: non_constant_identifier_names
Widget CardContainer(
    {required Widget child, EdgeInsets? margin, Color? color}) {
  return (Container(
    margin: margin,
    padding: const EdgeInsets.symmetric(
      horizontal: MySizes.md,
      vertical: MySizes.sm,
    ),
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(MySizes.defaultRadius),
        border: Border.all(color: MyColors.primary)),
    child: child,
  ));
}
