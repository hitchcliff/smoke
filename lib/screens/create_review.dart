import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/features/shop/reviews/review_form.dart';
import 'package:smoke/utils/constants/sizes.dart';

class CreateReviewScreen extends StatelessWidget {
  const CreateReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: TitleText("Leave a review"),
        showBackArrow: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: const ReviewForm(),
          ),
        ),
      ),
    );
  }
}
