import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/components/texts/on_sale.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';

class ProductThumbnailProps {
  const ProductThumbnailProps({
    required this.imgUrl,
    this.isNetworkImg = false,
    this.saleTxt = "25%",
    required this.onTapHeart,
    required this.onTapImg,
    this.isWishlist = false,
    this.onSale = false,
  });

  final VoidCallback onTapHeart;
  final VoidCallback onTapImg;
  final String imgUrl;
  final bool isNetworkImg;
  final String saleTxt;
  final bool isWishlist;
  final bool onSale;
}

class ProductThumbnail extends StatelessWidget {
  const ProductThumbnail(this.props, {super.key});

  final ProductThumbnailProps props;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image
        Container(
          decoration: BoxDecoration(
            color: MyColors.lightGrey,
            borderRadius: BorderRadius.circular(
              MySizes.cardImgRadius,
            ),
          ),
          child: RoundedImage(
            onTap: props.onTapImg,
            imgUrl: props.imgUrl,
            isNetworkImage: props.isNetworkImg,
          ),
        ),

        // Sale
        if (props.onSale)
          Positioned(
            top: 5,
            left: 5,
            child: OnSale(
              saleTxt: props.saleTxt,
            ),
          ),

        // Heart
        if (props.isWishlist)
          Positioned(
            top: 5,
            right: 5,
            child: GestureDetector(
              onTap: props.onTapHeart,
              child: const Icon(
                FontAwesomeIcons.solidHeart,
                color: MyColors.heart,
              ),
            ),
          )
      ],
    );
  }
}
