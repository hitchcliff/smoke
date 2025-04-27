import 'package:flutter/material.dart';
import 'package:smoke/components/card/card_container.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/utils/constants/colors.dart';

class CheckoutVoucher extends StatelessWidget {
  const CheckoutVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Form(
          child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: "Have a promo code? Enter here",
                enabled: true,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              child: const BodyText("Apply", color: MyColors.white))
        ],
      )),
    );
  }
}
