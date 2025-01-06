import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/rounded_image.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

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
  const CategoryImages({super.key, required this.props});

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
