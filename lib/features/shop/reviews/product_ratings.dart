import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smoke/components/rating_bars/rating_circular_bar.dart';
import 'package:smoke/components/rating_bars/rating_star_bar.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/headline_text.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/controllers/review_controller.dart';
import 'package:smoke/models/review_model.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ProductRatings extends StatelessWidget {
  const ProductRatings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ReviewController reviewController = ReviewController.instance;
    List<ReviewModel> review = reviewController.singleReviews;
    List<double> scores = review.map((r) => r.rating).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ---# Total score & Ratings bar
        scores.isEmpty
            ? TitleText("No reviews yet!")
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        // ---# Overall ratings
                        HeadlineText(MyHelpers.getAverage(scores)),
                        // ---# Star & Total reviews
                        RatingStarBar(
                            "${reviewController.singleReviews.length}",
                            rating: double.parse(MyHelpers.getAverage(scores)))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        RatingCircularBar('5',
                            value: MyHelpers.getRatings(scores)[5]!),
                        RatingCircularBar('4',
                            value: MyHelpers.getRatings(scores)[4]!),
                        RatingCircularBar('3',
                            value: MyHelpers.getRatings(scores)[3]!),
                        RatingCircularBar('2',
                            value: MyHelpers.getRatings(scores)[2]!),
                        RatingCircularBar('1',
                            value: MyHelpers.getRatings(scores)[1]!),
                      ],
                    ),
                  )
                ],
              ),
      ],
    );
  }
}
