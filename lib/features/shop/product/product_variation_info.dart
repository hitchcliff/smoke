import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/texts/body_text.dart';
import 'package:single_store_ecommerce/components/texts/label_info_text.dart';
import 'package:single_store_ecommerce/components/texts/label_text.dart';
import 'package:single_store_ecommerce/components/texts/linethrough_text.dart';
import 'package:single_store_ecommerce/components/texts/section_heading.dart';
import 'package:single_store_ecommerce/extensions/list_space_between.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductVariationInfo extends StatelessWidget {
  const ProductVariationInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.cardRadius),
        color: isDark ? MyColors.darkerGrey : MyColors.grey,
      ),
      padding: const EdgeInsets.all(MySizes.md),
      child: Column(
        children: [
          Row(
            children: [
              SectionHeading(
                SectionHeadingProps(
                    titleColor: MyHelpers.textColor(context: context),
                    title: "Variation"),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const LabelText("Price:"),
                      const LinethroughText('\$25'),
                      const BodyText('\$20'),
                    ].gap(width: MySizes.sm),
                  ),
                  Row(
                    children: [
                      const LabelText('Stock: '),
                      const LabelInfoText("In Stock"),
                    ].gap(width: MySizes.sm),
                  )
                ].gap(width: MySizes.sm),
              )
            ].gap(width: MySizes.sm),
          ),
          const BodyText(
              "This is the Description of the Products and it can go up to max 4 lines."),
        ].gap(height: MySizes.sm),
      ),
    );
  }
}
