import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/controllers/review_controller.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/validators/validation.dart';

class ReviewForm extends StatelessWidget {
  const ReviewForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ReviewController reviewController = Get.put(ReviewController());

    return Form(
      key: reviewController.reviewKey,
      child: Column(
        children: [
          // Star Rating
          Obx(
            () => RatingStars(
              value: reviewController.rating.value,
              onValueChanged: (value) {
                reviewController.rating.value = value;
              },
              starBuilder: (index, color) => Icon(
                FontAwesomeIcons.solidStar,
                color: color,
              ),
              starCount: 5,
              starSize: 30,
              // starOffColor: const Color(0xffe7e8ea),
              starColor: MyColors.star,
              animationDuration: Duration(milliseconds: 1000),
            ),
          ),

          // ---# Name
          TextFormField(
            maxLines: 4,
            validator: (value) =>
                Validation.validateEmptyText("message", value),
            controller: reviewController.message,
            decoration: const InputDecoration(
              // labelText: "Message",
              hintText: "Message",
            ),
          ),

          // ---# Button
          Obx(
            () => SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: reviewController.create,
                  child: BodyText(
                      reviewController.loading.value
                          ? "Submitting..."
                          : "Create review",
                      color: MyColors.white)),
            ),
          )
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
