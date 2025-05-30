import 'package:flutter/material.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.onTap,
    this.borderRadius = MySizes.defaultRadius,
    required this.imgUrl,
    this.isNetworkImage = false,
    this.fit = BoxFit.contain,
    this.color = MyColors.white,
  });

  final VoidCallback onTap;
  final double borderRadius;
  final String imgUrl;
  final bool isNetworkImage;
  final BoxFit? fit;
  final Color color;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          color: isDarkMode ? MyColors.light : MyColors.lightGrey,
          child: Image(
            image: isNetworkImage ? NetworkImage(imgUrl) : AssetImage(imgUrl),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
