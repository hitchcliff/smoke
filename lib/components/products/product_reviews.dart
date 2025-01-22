import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

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
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.angleRight),
            color: MyHelpers.textColor(context: context),
          ),
        ],
      ),
    );
  }
}
