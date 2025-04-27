import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/controllers/product_controller.dart';
import 'package:smoke/controllers/review_controller.dart';
import 'package:smoke/models/product_model.dart';
import 'package:smoke/screens/product_reviews.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class ProductReviewsButton extends StatelessWidget {
  const ProductReviewsButton({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());
    ReviewController reviewController = Get.put(ReviewController());
    ProductModel product = productController.singleProduct.value;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
      child: Obx(
        () => reviewController.loading.value
            ? SizedBox()
            : Row(
                children: [
                  Expanded(
                    child: SectionHeading(
                      SectionHeadingProps(
                        titleColor: MyHelpers.textColor(context: context),
                        title:
                            "Reviews (${reviewController.read(product.id).length})",
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
      ),
    );
  }
}
