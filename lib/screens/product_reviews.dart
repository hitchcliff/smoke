import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/app_bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/products/product_ratings.dart';
import 'package:single_store_ecommerce/components/rating_bars/rating_circular_bar.dart';
import 'package:single_store_ecommerce/components/rating_bars/rating_star_bar.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/headline_text.dart';
import 'package:single_store_ecommerce/components/texts/label_info_text.dart';
import 'package:single_store_ecommerce/components/texts/label_text.dart';
import 'package:single_store_ecommerce/components/texts/title_text.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: TitleText("Reviews & Ratings"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ---# Description
                BodyText(MyTexts.reviewsRatingsDescription),

                // ---# Ratings
                ProductRatings(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
