import 'package:flutter/material.dart';
import 'package:smoke/components/rounded/rounded_image.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class CategoryImageProp {
  const CategoryImageProp({
    required this.imgUrl,
    required this.onTap,
  });
  final String imgUrl;
  final VoidCallback onTap;
}

// ignore: non_constant_identifier_names
class CategoryImages extends StatelessWidget {
  const CategoryImages(
    this.props, {
    super.key,
  });

  final List<CategoryImageProp> props;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: props
          .map(
            (prop) => Flexible(
              child: RoundedImage(
                onTap: prop.onTap,
                color: MyColors.grey,
                imgUrl: prop.imgUrl,
              ),
            ),
          )
          .toList()
          .gap(width: MySizes.sm),
    );
  }
}
