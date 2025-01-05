import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    required this.onTap,
    this.borderRadius = MySizes.defaultRadius,
    required this.imgUrl,
    this.isNetworkImage = false,
    this.fit = BoxFit.contain,
  });

  final VoidCallback onTap;
  final double borderRadius;
  final String imgUrl;
  final bool isNetworkImage;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image(
          image: isNetworkImage ? NetworkImage(imgUrl) : AssetImage(imgUrl),
          fit: fit,
        ),
      ),
    );
  }
}
