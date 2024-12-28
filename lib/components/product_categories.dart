import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/circular_icon_text.dart';
import 'package:single_store_ecommerce/components/section_heading.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class ProductCategories extends StatelessWidget {
  const ProductCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: MySizes.defaultSpace,
      ),
      child: Column(
        children: [
          const SectionHeading(
            title: MyTexts.headingProductCategories,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              physics: const ScrollPhysics(),
              itemBuilder: (_, index) {
                return CircularIconText(
                    icon: FontAwesomeIcons.shoePrints,
                    text: "Shoes",
                    onTap: () {});
              },
            ),
          ),
        ].gap(height: MySizes.spaceBtwItems),
      ),
    );
  }
}
