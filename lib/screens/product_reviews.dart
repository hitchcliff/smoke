import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/controllers/review_controller.dart';
import 'package:smoke/features/shop/reviews/product_ratings.dart';
import 'package:smoke/features/shop/reviews/product_user_ratings.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/models/review_model.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/constants/text_strings.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ReviewController reviewController = Get.put(ReviewController());
    List<ReviewModel> reviews = reviewController.singleReviews;
    List<double> scores = reviews.map((r) => r.rating).toList();

    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: TitleText("Reviews & Ratings"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ---# Description
                const BodyText(MyTexts.reviewsRatingsDescription),

                // ---# Ratings
                const ProductRatings(),

                // ---# User ratings
                scores.isEmpty
                    ? SizedBox()
                    : Column(
                        children: reviews
                            .map(
                              (review) => ProductUserRatings(
                                props: review,
                              ),
                            )
                            .toList()
                            .gap(height: MySizes.spaceBtwItems),
                      ),
              ].gap(height: MySizes.spaceBtwItems),
            ),
          ),
        ),
      ),
    );
  }
}
