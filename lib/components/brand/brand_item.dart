import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smoke/components/brand/brand_title_with_icon.dart';
import 'package:smoke/components/shimmer/shimmer_effect.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class BrandItemProp {
  const BrandItemProp({
    required this.image,
    required this.brandName,
    required this.verified,
    required this.totalProducts,
    this.isNetworkImage = false,
  });

  final String image;
  final String brandName;
  final bool verified;
  final String totalProducts;
  final bool isNetworkImage;
}

class BrandItem extends StatelessWidget {
  const BrandItem(
    this.props, {
    super.key,
  });

  final BrandItemProp props;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Row(
      children: [
        // ---# Brand Image
        Flexible(
            child: CachedNetworkImage(
          width: 40,
          height: 40,
          fit: BoxFit.cover,
          // color: MyColors.grey,
          imageUrl: props.image,
          progressIndicatorBuilder: (context, url, progress) => ShimmerEffect(
            width: 40,
            height: 40,
          ),
          errorWidget: (context, url, error) =>
              const Icon(FontAwesomeIcons.triangleExclamation),
        )
            // : Image(
            //     color: isDarkMode ? MyColors.white : MyColors.black,
            //     width: 40,
            //     height: 40,
            //     fit: BoxFit.contain,
            //     image: AssetImage(props.image),
            //   ),
            ),

        // ---# Brand Name
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BrandTitleWithIcon(
                name: props.brandName,
                verified: props.verified,
              ),
              Text(
                "${props.totalProducts} Products",
                style: Theme.of(context).textTheme.labelMedium?.apply(
                      overflow: TextOverflow.ellipsis,
                    ),
              ),
            ],
          ),
        )
      ].gap(width: MySizes.sm),
    );
  }
}
