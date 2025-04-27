import 'package:flutter/material.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/section_heading.dart';
import 'package:smoke/extensions/list_space_between.dart';
import 'package:smoke/utils/constants/image_strings.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeading(
          SectionHeadingProps(
              title: "Payment Method",
              showActionButton: true,
              onPressed: () {},
              actionText: "Change",
              titleColor: MyHelpers.textColor(context: context)),
        ),
        Row(
          children: [
            const Expanded(
              flex: 1,
              child: Image(
                image: AssetImage(MyImages.paymentMethodPaypal),
              ),
            ),
            const Expanded(flex: 11, child: BodyText("Paypal"))
          ].gap(width: MySizes.sm),
        ),
      ].gap(height: MySizes.spaceBtwItems),
    );
  }
}
