import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/shimmer/shimmer_effect.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    required this.image,
    required this.isNetworkImg,
    this.width = 50,
    this.height = 50,
    this.radius = 50,
  });

  final String image;
  final bool isNetworkImg;
  final double width, height, radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: isNetworkImg && image.isNotEmpty
            ? CachedNetworkImage(
                width: width,
                height: height,
                fit: BoxFit.cover,
                // color: MyColors.grey,
                imageUrl: image,
                progressIndicatorBuilder: (context, url, progress) =>
                    ShimmerEffect(
                  width: width,
                  height: height,
                  radius: radius,
                ),
                errorWidget: (context, url, error) =>
                    const Icon(FontAwesomeIcons.triangleExclamation),
              )
            : Image(
                fit: BoxFit.cover,
                image: AssetImage(MyImages.profileImg),
              ),
      ),
    );
  }
}
