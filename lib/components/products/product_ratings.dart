import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/rating_bars/rating_circular_bar.dart';
import 'package:single_store_ecommerce/components/rating_bars/rating_star_bar.dart';
import 'package:single_store_ecommerce/components/texts/headline_text.dart';

class ProductRatings extends StatelessWidget {
  const ProductRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ---# Total score & Ratings bar
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  // ---# Overall ratings
                  HeadlineText('4.8'),
                  // ---# Star & Total reviews
                  RatingStarBar("13,000", rating: 4.5)
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  RatingCircularBar('5', value: 0.8),
                  RatingCircularBar('4', value: 0.6),
                  RatingCircularBar('3', value: 0.4),
                  RatingCircularBar('2', value: 0.3),
                  RatingCircularBar('1', value: 0.1),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
