import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/screens/product_reviews.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductReviewsButton extends StatelessWidget {
  const ProductReviewsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Row(
        children: [
          Expanded(
            child: SectionHeading(
              SectionHeadingProps(
                titleColor: MyHelpers.textColor(context: context),
                title: "Reviews(150)",
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(() => const ProductReviewsScreen());
            },
            icon: const Icon(FontAwesomeIcons.angleRight),
            color: MyHelpers.textColor(context: context),
          ),
        ],
      ),
    );
  }
}
