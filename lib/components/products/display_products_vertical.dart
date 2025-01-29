import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/grid_layouts/grid_layout.dart';
import 'package:single_store_ecommerce/components/products/product_item.dart';
import 'package:single_store_ecommerce/components/products/product_thumbnail.dart';
import 'package:single_store_ecommerce/components/products/product_card.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

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
  const DisplayProductsVertical(this.props,
      {super.key,
      this.margin = const EdgeInsets.only(top: MySizes.spaceBtwSections)});

  final DisplayProductsVerticalProps props;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Container(
      margin: margin,
      color: isDarkMode ? MyColors.dark : MyColors.lightGrey,
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Column(
        children: [
          // ---# if heading is passed
          if (props.heading != null)
            Padding(
              padding: const EdgeInsets.only(top: MySizes.spaceBtwItems),
              child: SectionHeading(SectionHeadingProps(
                titleColor: props.heading!.titleColor,
                title: props.heading!.title,
                actionText: props.heading!.actionText,
                showActionButton: props.heading!.showActionButton,
              )),
            ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: MySizes.defaultSpace,
              top: MySizes.spaceBtwItems,
            ),
            child: GridLayout(
              crossAxisCount: 2,
              children: props.products
                  .map(
                    (info) => ProductVerticalItem(
                      ProductThumbnail(
                        ProductThumbnailProps(
                          imgUrl: info.thumbnail.imgUrl,
                          onTapHeart: info.thumbnail.onTapHeart,
                          onTapImg: info.thumbnail.onTapImg,
                          saleTxt: info.thumbnail.saleTxt,
                          onSale: info.thumbnail.onSale,
                          isWishlist: info.thumbnail.isWishlist,
                        ),
                      ),
                      ProductCard(
                        ProductCardProps(
                          name: info.details.name,
                          price: info.details.price,
                          brand: info.details.brand,
                          verified: info.details.verified,
                          onTap: info.details.onTap,
                        ),
                      ),
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
