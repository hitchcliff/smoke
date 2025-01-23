import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/texts/label_info_text.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';

class RatingStarBar extends StatelessWidget {
  const RatingStarBar(this.text, {super.key, required this.rating});

  final String text;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        RatingBarIndicator(
          direction: Axis.horizontal,
          itemSize: 15,
          itemCount: 5,
          rating: rating,
          unratedColor: MyColors.grey,
          itemBuilder: (context, index) => const Icon(
            FontAwesomeIcons.solidStar,
            color: MyColors.star,
          ),
        ),
        LabelInfoText(text),
      ],
    );
  }
}
