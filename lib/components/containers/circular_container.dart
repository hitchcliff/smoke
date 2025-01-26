import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = MyColors.white,
    this.child,
    this.opacity = 0.1,
    this.margin,
    this.border,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final double? opacity;
  final Color backgroundColor;
  final Widget? child;
  final EdgeInsets? margin;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      margin: margin,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
        border: border,
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor.withOpacity(opacity!),
      ),
      child: child,
    );
  }
}
