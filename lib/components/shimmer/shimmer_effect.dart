import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect(
      {super.key,
      required this.width,
      required this.height,
      this.radius = 15,
      this.color});

  final double width, height, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = MyHelpers.isDarkMode(context);

    return Shimmer.fromColors(
      baseColor: isDarkMode ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: isDarkMode ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (isDarkMode ? MyColors.primary : MyColors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
