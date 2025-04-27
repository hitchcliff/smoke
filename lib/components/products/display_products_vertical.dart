import 'package:flutter/material.dart';
import 'package:smoke/components/grid_layouts/grid_layout.dart';
import 'package:smoke/components/products/product_item.dart';
import 'package:smoke/components/products/product_thumbnail.dart';
import 'package:smoke/components/products/product_card.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class DisplayProductsVerticalDetailsProp {
  const DisplayProductsVerticalDetailsProp(
      {required this.thumbnail, required this.details});

  final ProductThumbnailProps thumbnail;
  final ProductCardProps details;
}

class DisplayProductsVerticalProps {
  const DisplayProductsVerticalProps(this.heading, this.products);

  final SectionHeadingProps? heading;
  final List<DisplayProductsVerticalDetailsProp> products;
}

class DisplayProductsVertical extends StatelessWidget {
  const DisplayProductsVertical(
    this.props, {
    super.key,
    this.margin = const EdgeInsets.only(top: MySizes.spaceBtwSections),
  });

  final DisplayProductsVerticalProps props;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Container(
      margin: margin,
      color: isDarkMode ? MyColors.dark : MyColors.light,
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Column(
        children: [
          // ---# if heading is passed
          if (props.heading != null)
            Padding(
              padding: const EdgeInsets.only(top: MySizes.spaceBtwItems),
              child: SectionHeading(props.heading!),
            ),

          props.products.isEmpty
              ? SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(
                    bottom: MySizes.defaultSpace,
                    top: MySizes.spaceBtwItems,
                  ),
                  child: GridLayout(
                    crossAxisCount: 2,
                    children: props.products
                        .map(
                          (info) => ProductVerticalItem(
                            ProductThumbnail(info.thumbnail),
                            ProductCard(info.details),
                          ),
                        )
                        .toList(),
                  ),
                ),
        ],
      ),
    );
  }
}
